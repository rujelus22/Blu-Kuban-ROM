.class public Lcom/sec/android/app/myfiles/ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/ListAdapter$1;,
        Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;
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

.field private mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

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

    .line 265
    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/myfiles/ListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mStartPosition:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    .line 270
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mHandler:Landroid/os/Handler;

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/ListView;)V
    .registers 5
    .parameter "context"
    .parameter "handler"
    .parameter "view"

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mStartPosition:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    .line 277
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mContext:Landroid/content/Context;

    .line 278
    iput-object p2, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mHandler:Landroid/os/Handler;

    .line 279
    iput-object p3, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mList:Landroid/widget/ListView;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/myfiles/ListAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/myfiles/ListAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mStartPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/myfiles/ListAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mStartPosition:I

    return p1
.end method

.method private aging()V
    .registers 9

    .prologue
    .line 382
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 383
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 384
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
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

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
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 398
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v0, deletedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 400
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    .line 401
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 402
    .local v4, key:I
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x3c

    if-le v5, v7, :cond_12

    .line 403
    iget-object v7, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    monitor-enter v7
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_6f

    .line 406
    :try_start_39
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 407
    .local v2, item:Lcom/sec/android/app/myfiles/SimpleItem;
    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 408
    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v9

    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-static {v9, v5}, Lcom/sec/android/app/myfiles/MediaFile;->getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_5c
    .catchall {:try_start_39 .. :try_end_5c} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5c} :catch_72

    .line 415
    :cond_5c
    if-eqz v2, :cond_66

    .line 416
    const/4 v5, 0x1

    :try_start_5f
    invoke-virtual {v2, v5}, Lcom/sec/android/app/myfiles/SimpleItem;->setIsIcon(Z)V

    .line 417
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/myfiles/SimpleItem;->setSkipThumb(Z)V

    .line 419
    :cond_66
    monitor-exit v7
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_88

    .line 420
    :try_start_67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 428
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

    .line 411
    .restart local v0       #deletedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v4       #key:I
    :catch_72
    move-exception v1

    .line 412
    .local v1, e:Ljava/lang/Exception;
    :try_start_73
    monitor-exit v7
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_88

    .line 424
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #key:I
    :cond_74
    :try_start_74
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 425
    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 426
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_74 .. :try_end_87} :catchall_6f

    goto :goto_78

    .line 419
    .restart local v4       #key:I
    :catchall_88
    move-exception v5

    :try_start_89
    monitor-exit v7
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v5

    .line 428
    .end local v4           #key:I
    :cond_8b
    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_6f

    .line 429
    return-void
.end method

.method private setData(Landroid/view/View;Lcom/sec/android/app/myfiles/SimpleItem;)V
    .registers 13
    .parameter "view"
    .parameter "aIconifiedText"

    .prologue
    const v7, 0x7f0c0005

    const v9, 0x7f0c0002

    const v8, 0x7f0c0006

    .line 525
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v4

    .line 526
    .local v4, type:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    sget-object v5, Lcom/sec/android/app/myfiles/ListAdapter$1;->$SwitchMap$com$sec$android$app$myfiles$SimpleItem$ItemType:[I

    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_156

    .line 611
    :cond_18
    :goto_18
    :pswitch_18
    return-void

    .line 529
    :pswitch_19
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 530
    .local v2, mTextView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 533
    .local v3, mcheckBox:Landroid/widget/CheckBox;
    if-eqz v3, :cond_35

    .line 534
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getChecking()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 536
    :cond_35
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 538
    .local v1, mIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->isIcon()Z

    move-result v5

    if-nez v5, :cond_52

    .line 539
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 544
    :goto_46
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    .line 541
    :cond_52
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_46

    .line 549
    .end local v1           #mIcon:Landroid/widget/ImageView;
    .end local v2           #mTextView:Landroid/widget/TextView;
    .end local v3           #mcheckBox:Landroid/widget/CheckBox;
    :pswitch_58
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 550
    .restart local v2       #mTextView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 553
    .restart local v3       #mcheckBox:Landroid/widget/CheckBox;
    if-eqz v3, :cond_18

    .line 554
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getChecking()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_18

    .line 560
    .end local v2           #mTextView:Landroid/widget/TextView;
    .end local v3           #mcheckBox:Landroid/widget/CheckBox;
    :pswitch_75
    const v5, 0x7f0c0010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 561
    .local v0, mButton:Landroid/widget/ImageView;
    if-eqz v0, :cond_a8

    .line 562
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->isSelectable()Z

    move-result v5

    if-nez v5, :cond_d3

    .line 563
    const v5, 0x7f020059

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 565
    const-string v5, "[MyFiles]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is disable to BT visibility. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_a8
    :goto_a8
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 582
    .restart local v2       #mTextView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 585
    .restart local v1       #mIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->isIcon()Z

    move-result v5

    if-nez v5, :cond_11f

    .line 586
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 591
    :goto_c6
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_18

    .line 568
    .end local v1           #mIcon:Landroid/widget/ImageView;
    .end local v2           #mTextView:Landroid/widget/TextView;
    :cond_d3
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 569
    const v5, 0x7f020033

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 571
    const-string v5, "[MyFiles]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is visible to bluetooth. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 573
    :cond_fc
    const v5, 0x7f020032

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 575
    const-string v5, "[MyFiles]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not visible to bluetooth. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 588
    .restart local v1       #mIcon:Landroid/widget/ImageView;
    .restart local v2       #mTextView:Landroid/widget/TextView;
    :cond_11f
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_c6

    .line 595
    .end local v0           #mButton:Landroid/widget/ImageView;
    .end local v1           #mIcon:Landroid/widget/ImageView;
    .end local v2           #mTextView:Landroid/widget/TextView;
    :pswitch_125
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 596
    .restart local v2       #mTextView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 599
    .restart local v1       #mIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->isIcon()Z

    move-result v5

    if-nez v5, :cond_150

    .line 600
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 605
    :goto_143
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_18

    .line 602
    :cond_150
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_143

    .line 526
    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_58
        :pswitch_75
        :pswitch_125
    .end packed-switch
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_5

    .line 315
    :goto_4
    return-void

    .line 308
    :cond_5
    const-string v0, "[MyFiles]"

    const-string v1, "ListAdapter.clearAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    monitor-enter v1

    .line 311
    :try_start_f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ListAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 312
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
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, value:I
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    monitor-enter v2

    .line 321
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 322
    monitor-exit v2

    .line 323
    return v0

    .line 322
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
    .line 327
    const/4 v1, 0x0

    .line 329
    .local v1, obj:Ljava/lang/Object;
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_f

    .line 330
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 331
    monitor-exit v3

    .line 335
    .end local v1           #obj:Ljava/lang/Object;
    :goto_b
    return-object v1

    .line 331
    :catchall_c
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    :try_start_e
    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_f

    .line 332
    :catch_f
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 376
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 6
    .parameter "position"

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, val:I
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    monitor-enter v3

    .line 358
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 359
    .local v0, size:I
    if-lez v0, :cond_1c

    if-le v0, p1, :cond_1c

    .line 360
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/myfiles/SimpleItem;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/SimpleItem;->mItemType:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->ordinal()I

    move-result v1

    .line 361
    :cond_1c
    monitor-exit v3

    .line 362
    return v1

    .line 361
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

    .line 436
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, p1, :cond_b

    .line 437
    const/4 v3, 0x0

    .line 520
    :goto_a
    return-object v3

    .line 438
    :cond_b
    const/4 v3, 0x0

    .line 441
    .local v3, view:Landroid/view/View;
    add-int/lit8 v4, p1, -0x7

    iput v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mStartPosition:I

    .line 442
    iget v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mStartPosition:I

    if-gez v4, :cond_16

    .line 443
    iput v5, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mStartPosition:I

    .line 444
    :cond_16
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 445
    :try_start_19
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_34

    .line 447
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ListAdapter;->clearAgeMap()V

    .line 448
    :cond_34
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 449
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ListAdapter;->aging()V

    .line 450
    :cond_3f
    monitor-exit v5
    :try_end_40
    .catchall {:try_start_19 .. :try_end_40} :catchall_b7

    .line 452
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    monitor-enter v5

    .line 453
    :try_start_43
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 454
    .local v0, aIconifiedText:Lcom/sec/android/app/myfiles/SimpleItem;
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v2

    .line 455
    .local v2, type:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    if-nez p2, :cond_10b

    .line 456
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 458
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget-object v4, Lcom/sec/android/app/myfiles/ListAdapter$1;->$SwitchMap$com$sec$android$app$myfiles$SimpleItem$ItemType:[I

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_12a

    .line 490
    :goto_66
    if-eqz v3, :cond_102

    .line 491
    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/myfiles/ListAdapter;->setData(Landroid/view/View;Lcom/sec/android/app/myfiles/SimpleItem;)V

    .line 502
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_6b
    :goto_6b
    if-eqz v3, :cond_b1

    .line 503
    sget-object v4, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-eq v2, v4, :cond_75

    sget-object v4, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->RENAMEFILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-ne v2, v4, :cond_b1

    .line 504
    :cond_75
    const v4, 0x7f0c0003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mBoundary:Landroid/widget/ImageView;

    .line 505
    const v4, 0x7f0c0004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mOverlay:Landroid/widget/ImageView;

    .line 506
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_113

    .line 507
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mBoundary:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mOverlay:Landroid/widget/ImageView;

    const v6, 0x7f020023

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mOverlay:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    :cond_b1
    :goto_b1
    monitor-exit v5

    goto/16 :goto_a

    .end local v0           #aIconifiedText:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v2           #type:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    :catchall_b4
    move-exception v4

    monitor-exit v5
    :try_end_b6
    .catchall {:try_start_43 .. :try_end_b6} :catchall_b4

    throw v4

    .line 450
    :catchall_b7
    move-exception v4

    :try_start_b8
    monitor-exit v5
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw v4

    .line 461
    .restart local v0       #aIconifiedText:Lcom/sec/android/app/myfiles/SimpleItem;
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #type:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    :pswitch_ba
    :try_start_ba
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 462
    const v4, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_66

    .line 464
    :cond_c9
    const v4, 0x7f03000b

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 466
    goto :goto_66

    .line 468
    :pswitch_d2
    const v4, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 470
    goto :goto_66

    .line 472
    :pswitch_db
    const v4, 0x7f030024

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 474
    goto :goto_66

    .line 476
    :pswitch_e4
    const v4, 0x7f03002b

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 478
    goto/16 :goto_66

    .line 480
    :pswitch_ee
    const v4, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 482
    goto/16 :goto_66

    .line 484
    :pswitch_f8
    const v4, 0x7f03002a

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 486
    goto/16 :goto_66

    .line 494
    :cond_102
    const-string v4, "[MyFiles]"

    const-string v6, "TextListAdapter : getView : view is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 497
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_10b
    move-object v3, p2

    .line 498
    if-eqz v3, :cond_6b

    .line 499
    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/myfiles/ListAdapter;->setData(Landroid/view/View;Lcom/sec/android/app/myfiles/SimpleItem;)V

    goto/16 :goto_6b

    .line 512
    :cond_113
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mBoundary:Landroid/widget/ImageView;

    if-eqz v4, :cond_11e

    .line 513
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mBoundary:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    :cond_11e
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mOverlay:Landroid/widget/ImageView;

    if-eqz v4, :cond_b1

    .line 515
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mOverlay:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_129
    .catchall {:try_start_ba .. :try_end_129} :catchall_b4

    goto :goto_b1

    .line 458
    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_ba
        :pswitch_d2
        :pswitch_db
        :pswitch_e4
        :pswitch_ee
        :pswitch_f8
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 371
    invoke-static {}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->values()[Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    if-eqz v0, :cond_c

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    #calls: Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->onPause()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->access$800(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;)V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    .line 256
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
    .line 299
    .local p1, lit:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    monitor-enter v1

    .line 300
    :try_start_3
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;

    .line 301
    monitor-exit v1

    .line 302
    return-void

    .line 301
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
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    if-nez v0, :cond_b

    .line 241
    new-instance v0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;-><init>(Lcom/sec/android/app/myfiles/ListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    .line 243
    :cond_b
    return-void
.end method

.method public updateItem(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    #calls: Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->onUpdateItem(I)V
    invoke-static {v0, p1}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->access$900(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;I)V

    .line 262
    :cond_9
    return-void
.end method

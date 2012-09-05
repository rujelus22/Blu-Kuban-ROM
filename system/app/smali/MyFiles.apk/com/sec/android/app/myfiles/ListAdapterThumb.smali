.class public Lcom/sec/android/app/myfiles/ListAdapterThumb;
.super Landroid/widget/BaseAdapter;
.source "ListAdapterThumb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;
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

.field private mContext:Landroid/content/Context;

.field private mGrid:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

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

.field private mStartPosition:I

.field public type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/GridView;)V
    .registers 6
    .parameter "context"
    .parameter "handler"
    .parameter "grid"

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mStartPosition:I

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    .line 253
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mHandler:Landroid/os/Handler;

    .line 255
    iput-object p3, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mGrid:Landroid/widget/GridView;

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->type:I

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Landroid/widget/GridView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/myfiles/ListAdapterThumb;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mStartPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/myfiles/ListAdapterThumb;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mStartPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private aging()V
    .registers 9

    .prologue
    .line 311
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 312
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 313
    .local v3, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 315
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_45

    move-result v4

    if-eqz v4, :cond_48

    .line 317
    :try_start_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 318
    .local v2, key:I
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

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

    .line 319
    .end local v2           #key:I
    :catch_40
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/Exception;
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .line 323
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

    .line 324
    return-void
.end method

.method private declared-synchronized clearAgeMap()V
    .registers 12

    .prologue
    const/16 v9, 0x82

    .line 328
    monitor-enter p0

    :try_start_3
    iget-object v7, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_33

    .line 329
    :try_start_6
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/16 v8, 0xb4

    if-ge v6, v8, :cond_13

    .line 330
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_30

    .line 402
    :goto_11
    monitor-exit p0

    return-void

    .line 331
    :cond_13
    :try_start_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v1, deletedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 334
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 335
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 401
    .end local v1           #deletedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_30
    move-exception v6

    monitor-exit v7
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_30

    :try_start_32
    throw v6
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 328
    :catchall_33
    move-exception v6

    monitor-exit p0

    throw v6

    .line 338
    .restart local v1       #deletedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_36
    :try_start_36
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_30

    .line 339
    const/4 v0, 0x0

    .line 342
    .local v0, cutOver:I
    const/16 v6, 0x82

    :try_start_3c
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_30
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_ce

    move-result v0

    .line 347
    :goto_46
    if-ge v0, v9, :cond_4a

    .line 348
    :try_start_48
    monitor-exit v7

    goto :goto_11

    .line 350
    :cond_4a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 352
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 355
    :cond_57
    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 356
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 358
    .local v5, key:I
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v0, :cond_57

    .line 360
    iget-object v8, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    monitor-enter v8
    :try_end_7c
    .catchall {:try_start_48 .. :try_end_7c} :catchall_30

    .line 364
    :try_start_7c
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 367
    .local v3, item:Lcom/sec/android/app/myfiles/SimpleItem;
    if-eqz v3, :cond_9f

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->isFile()Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 368
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v9

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v10

    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-static {v10, v6}, Lcom/sec/android/app/myfiles/MediaFile;->getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/sec/android/app/myfiles/SimpleIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_9f
    .catchall {:try_start_7c .. :try_end_9f} :catchall_c8
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_9f} :catch_b2

    .line 375
    :cond_9f
    if-eqz v3, :cond_a9

    .line 376
    const/4 v6, 0x1

    :try_start_a2
    invoke-virtual {v3, v6}, Lcom/sec/android/app/myfiles/SimpleItem;->setIsIcon(Z)V

    .line 377
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sec/android/app/myfiles/SimpleItem;->setSkipThumb(Z)V

    .line 379
    :cond_a9
    monitor-exit v8
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_c8

    .line 380
    :try_start_aa
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_30

    goto :goto_57

    .line 371
    .end local v3           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :catch_b2
    move-exception v2

    .line 372
    .local v2, e:Ljava/lang/Exception;
    :try_start_b3
    monitor-exit v8
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_c8

    .line 384
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #key:I
    :cond_b4
    :try_start_b4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 386
    :goto_b8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 387
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c7
    .catchall {:try_start_b4 .. :try_end_c7} :catchall_30

    goto :goto_b8

    .line 379
    .restart local v5       #key:I
    :catchall_c8
    move-exception v6

    :try_start_c9
    monitor-exit v8
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw v6

    .line 401
    .end local v5           #key:I
    :cond_cb
    monitor-exit v7
    :try_end_cc
    .catchall {:try_start_ca .. :try_end_cc} :catchall_30

    goto/16 :goto_11

    .line 343
    :catch_ce
    move-exception v6

    goto/16 :goto_46
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    if-nez v0, :cond_5

    .line 293
    :goto_4
    return-void

    .line 286
    :cond_5
    const-string v0, "[MyFiles]"

    const-string v1, "ListAdapterThumb.clearAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    monitor-enter v1

    .line 289
    :try_start_f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->notifyDataSetChanged()V

    goto :goto_4

    .line 290
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final getCount()I
    .registers 4

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, value:I
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    monitor-enter v2

    .line 565
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 566
    monitor-exit v2

    .line 567
    return v0

    .line 566
    :catchall_c
    move-exception v1

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 6
    .parameter "position"

    .prologue
    .line 571
    const/4 v1, 0x0

    .line 574
    .local v1, obj:Ljava/lang/Object;
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_f

    .line 575
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 576
    monitor-exit v3

    .line 580
    .end local v1           #obj:Ljava/lang/Object;
    :goto_b
    return-object v1

    .line 576
    :catchall_c
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    :try_start_e
    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_f

    .line 577
    :catch_f
    move-exception v0

    .line 578
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 585
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 406
    new-instance v0, Lcom/sec/android/app/myfiles/CheckedImageButton;

    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;-><init>(Landroid/content/Context;)V

    .line 409
    .local v0, i:Lcom/sec/android/app/myfiles/CheckedImageButton;
    add-int/lit8 v5, p1, -0x18

    iput v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mStartPosition:I

    .line 410
    iget v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mStartPosition:I

    if-gez v5, :cond_12

    .line 411
    iput v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mStartPosition:I

    .line 413
    :cond_12
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 414
    if-eqz p1, :cond_49

    :try_start_17
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 415
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/16 v7, 0xb4

    if-le v5, v7, :cond_3e

    .line 418
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->clearAgeMap()V

    .line 419
    :cond_3e
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_49

    .line 420
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->aging()V

    .line 422
    :cond_49
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_12a

    .line 424
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    monitor-enter v6

    .line 425
    :try_start_4d
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 427
    .local v3, item:Lcom/sec/android/app/myfiles/SimpleItem;
    if-nez p2, :cond_154

    .line 428
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 430
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030016

    const/4 v7, 0x0

    invoke-virtual {v1, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 432
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0c001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->initViews(Landroid/view/View;)V

    .line 438
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setFile(Ljava/io/File;)V

    .line 444
    const/4 v2, 0x0

    .line 445
    .local v2, isApk:Z
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-eq v5, v7, :cond_9b

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-eq v5, v7, :cond_9b

    .line 447
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->isInstallFileType(I)Z

    move-result v2

    .line 451
    :cond_9b
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->isIcon()Z

    move-result v5

    if-nez v5, :cond_a3

    if-eqz v2, :cond_12d

    .line 452
    :cond_a3
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setThumbnailVisibility(I)V

    .line 463
    :goto_b3
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 464
    const v5, 0x7f020002

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setCheckMarkDrawable(I)V

    .line 465
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setChecked(Z)V

    .line 508
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_c6
    :goto_c6
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setText(Ljava/lang/String;Z)V

    .line 523
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-ne v5, v7, :cond_1cb

    .line 524
    const-string v5, "@SELECT_ALL_ITEM"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 529
    :goto_db
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-eq v5, v7, :cond_eb

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-ne v5, v7, :cond_1d1

    .line 531
    :cond_eb
    const v5, 0x7f0c0025

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 539
    :goto_104
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-ne v5, v7, :cond_1eb

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v5

    if-eqz v5, :cond_1eb

    .line 543
    const v5, 0x7f020023

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setOverlayResource(I)V

    .line 544
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setOverlayVisibility(Z)V

    .line 548
    :goto_128
    monitor-exit v6
    :try_end_129
    .catchall {:try_start_4d .. :try_end_129} :catchall_151

    .line 549
    return-object v4

    .line 422
    .end local v2           #isApk:Z
    .end local v3           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v4           #v:Landroid/view/View;
    :catchall_12a
    move-exception v5

    :try_start_12b
    monitor-exit v6
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    throw v5

    .line 455
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #isApk:Z
    .restart local v3       #item:Lcom/sec/android/app/myfiles/SimpleItem;
    .restart local v4       #v:Landroid/view/View;
    :cond_12d
    :try_start_12d
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-eq v5, v7, :cond_14b

    .line 458
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setImageThumbnailDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    :cond_14b
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setThumbnailVisibility(I)V

    goto/16 :goto_b3

    .line 548
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #isApk:Z
    .end local v3           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v4           #v:Landroid/view/View;
    :catchall_151
    move-exception v5

    monitor-exit v6
    :try_end_153
    .catchall {:try_start_12d .. :try_end_153} :catchall_151

    throw v5

    .line 468
    .restart local v3       #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_154
    move-object v4, p2

    .line 469
    .restart local v4       #v:Landroid/view/View;
    const v5, 0x7f0c001f

    :try_start_158
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->initViews(Landroid/view/View;)V

    .line 475
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setFile(Ljava/io/File;)V

    .line 486
    const/4 v2, 0x0

    .line 487
    .restart local v2       #isApk:Z
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-eq v5, v7, :cond_187

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-eq v5, v7, :cond_187

    .line 489
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->isInstallFileType(I)Z

    move-result v2

    .line 493
    :cond_187
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->isIcon()Z

    move-result v5

    if-nez v5, :cond_18f

    if-eqz v2, :cond_1a8

    .line 494
    :cond_18f
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setThumbnailVisibility(I)V

    .line 505
    :goto_19f
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setChecked(Z)V

    goto/16 :goto_c6

    .line 497
    :cond_1a8
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-eq v5, v7, :cond_1c6

    .line 500
    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setImageThumbnailDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 502
    :cond_1c6
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setThumbnailVisibility(I)V

    goto :goto_19f

    .line 526
    :cond_1cb
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_db

    .line 534
    :cond_1d1
    const v5, 0x7f0c0025

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x205

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_104

    .line 546
    :cond_1eb
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setOverlayVisibility(Z)V
    :try_end_1ef
    .catchall {:try_start_158 .. :try_end_1ef} :catchall_151

    goto/16 :goto_128
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    if-eqz v0, :cond_c

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    #calls: Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->onPause()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->access$900(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;)V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    .line 225
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
    .line 277
    .local p1, directoryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    monitor-enter v1

    .line 278
    :try_start_3
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;

    .line 279
    monitor-exit v1

    .line 280
    return-void

    .line 279
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
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    if-nez v0, :cond_b

    .line 210
    new-instance v0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;-><init>(Lcom/sec/android/app/myfiles/ListAdapterThumb;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    .line 212
    :cond_b
    return-void
.end method

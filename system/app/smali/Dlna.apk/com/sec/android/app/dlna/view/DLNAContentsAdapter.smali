.class public Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DLNAContentsAdapter.java"


# instance fields
.field private DeviceIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private DeviceIcon_Thread:Ljava/lang/Thread;

.field private final MAX_CHECKDEVICENAME_LENGTH:I

.field protected checkMode:Z

.field protected context:Landroid/content/Context;

.field protected controlPointInfo:Lcom/sec/android/app/dlna/view/IControlPointInfo;

.field protected inflater:Landroid/view/LayoutInflater;

.field private item:Lcom/samsung/api/DeviceItem;

.field protected itemLayout:I

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V
    .registers 7
    .parameter "context"
    .parameter "resourceId"
    .parameter "list"
    .parameter "controlPointInfo"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->itemLayout:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->checkMode:Z

    .line 49
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    .line 54
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    .line 56
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->controlPointInfo:Lcom/sec/android/app/dlna/view/IControlPointInfo;

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->mThumbnail:Ljava/util/HashMap;

    .line 61
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->DeviceIcon:Ljava/util/HashMap;

    .line 63
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->DeviceIcon_Thread:Ljava/lang/Thread;

    .line 65
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->item:Lcom/samsung/api/DeviceItem;

    .line 495
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->MAX_CHECKDEVICENAME_LENGTH:I

    .line 69
    if-nez p3, :cond_36

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    .line 76
    :goto_25
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    .line 78
    iput p2, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->itemLayout:I

    .line 79
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 80
    iput-object p4, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->controlPointInfo:Lcom/sec/android/app/dlna/view/IControlPointInfo;

    .line 81
    return-void

    .line 72
    :cond_36
    iput-object p3, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    goto :goto_25
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->setDeviceIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "name"

    .prologue
    .line 498
    const/4 v2, 0x0

    .line 499
    .local v2, sublen:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 500
    .local v1, sbuf:Ljava/lang/StringBuffer;
    if-nez p1, :cond_b

    .line 501
    const-string v3, ""

    .line 512
    :goto_a
    return-object v3

    .line 502
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_30

    const/16 v3, 0x13

    if-ge v2, v3, :cond_30

    .line 503
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2d

    .line 504
    add-int/lit8 v2, v2, 0x2

    .line 507
    :goto_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 506
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 509
    :cond_30
    const/16 v3, 0x12

    if-le v2, v3, :cond_4b

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4b
    move-object v3, p1

    .line 512
    goto :goto_a
.end method

.method private getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "filePath"

    .prologue
    .line 606
    const/4 v1, 0x0

    .line 607
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->mThumbnail:Ljava/util/HashMap;

    if-eqz v2, :cond_13

    .line 608
    iget-object v3, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->mThumbnail:Ljava/util/HashMap;

    monitor-enter v3

    .line 609
    :try_start_8
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 610
    monitor-exit v3

    .line 612
    :cond_13
    return-object v1

    .line 610
    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v2
.end method

.method private getDivceIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter "device_name"

    .prologue
    .line 592
    const/4 v1, 0x0

    .line 593
    .local v1, sync_icons:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->DeviceIcon:Ljava/util/HashMap;

    if-eqz v2, :cond_13

    .line 594
    iget-object v3, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->DeviceIcon:Ljava/util/HashMap;

    monitor-enter v3

    .line 595
    :try_start_8
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->DeviceIcon:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    .line 596
    monitor-exit v3

    .line 598
    :cond_13
    return-object v1

    .line 596
    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v2
.end method

.method private parseNull(Landroid/view/View;)V
    .registers 2
    .parameter "itemView"

    .prologue
    .line 125
    return-void
.end method

.method private parseSelectAll(Landroid/view/View;Ljava/lang/Object;)V
    .registers 11
    .parameter "view"
    .parameter "object"

    .prologue
    .line 467
    const v6, 0x7f070069

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 468
    .local v4, mediaName:Landroid/widget/TextView;
    const v6, 0x7f070065

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 469
    .local v3, icon:Landroid/widget/ImageView;
    const v6, 0x7f07006b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 470
    .local v1, cBox:Landroid/widget/CheckBox;
    const v6, 0x7f090054

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 471
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 474
    const/4 v0, 0x1

    .line 477
    .local v0, bAllChecked:Z
    iget-object v6, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4d

    .line 478
    const/4 v0, 0x0

    .line 490
    :cond_34
    :goto_34
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 491
    iget-object v6, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x205

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    const v6, 0x7f02012b

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 493
    return-void

    .line 480
    :cond_4d
    iget-object v6, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 481
    .local v5, o:Ljava/lang/Object;
    instance-of v6, v5, Lcom/sec/android/app/dlna/model/PlaylistItem;

    if-eqz v6, :cond_53

    .line 482
    check-cast v5, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .end local v5           #o:Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isChecked()Z

    move-result v6

    if-nez v6, :cond_53

    .line 483
    const/4 v0, 0x0

    .line 484
    goto :goto_34
.end method

.method private setDeviceIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 15
    .parameter "iconUri"

    .prologue
    const/16 v11, 0x140

    .line 516
    const/4 v1, 0x0

    .line 517
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 518
    .local v6, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 519
    .local v3, entity:Lorg/apache/http/HttpEntity;
    const/4 v0, 0x0

    .line 522
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    if-eqz p1, :cond_44

    .line 523
    :try_start_8
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 524
    .local v9, url:Ljava/net/URL;
    const-string v10, "Android"

    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 525
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 527
    .local v4, getRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 528
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 529
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 531
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 532
    .local v5, icon:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 533
    .local v7, resize:Landroid/graphics/Bitmap;
    sget v10, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDensityDpi:I

    if-eq v10, v11, :cond_35

    sget v10, Lcom/sec/android/app/dlna/ui/AddinActivity;->mDensityDpi:I

    if-ne v10, v11, :cond_54

    .line 534
    :cond_35
    const/16 v10, 0xa0

    const/16 v11, 0xa0

    const/4 v12, 0x1

    invoke-static {v5, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 538
    :goto_3e
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_5e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_6f

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 544
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #icon:Landroid/graphics/Bitmap;
    .end local v7           #resize:Landroid/graphics/Bitmap;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #url:Ljava/net/URL;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_44
    if-eqz v3, :cond_49

    .line 545
    :try_start_46
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 547
    :cond_49
    if-eqz v0, :cond_4e

    .line 548
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 550
    :cond_4e
    if-eqz v6, :cond_53

    .line 551
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_53} :catch_80

    .line 555
    :cond_53
    :goto_53
    return-object v1

    .line 536
    .restart local v4       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #icon:Landroid/graphics/Bitmap;
    .restart local v7       #resize:Landroid/graphics/Bitmap;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #url:Ljava/net/URL;
    :cond_54
    const/16 v10, 0x50

    const/16 v11, 0x50

    const/4 v12, 0x1

    :try_start_59
    invoke-static {v5, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_6f

    move-result-object v7

    goto :goto_3e

    .line 543
    .end local v4           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #icon:Landroid/graphics/Bitmap;
    .end local v7           #resize:Landroid/graphics/Bitmap;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #url:Ljava/net/URL;
    :catchall_5e
    move-exception v10

    .line 544
    if-eqz v3, :cond_64

    .line 545
    :try_start_61
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 547
    :cond_64
    if-eqz v0, :cond_69

    .line 548
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 550
    :cond_69
    if-eqz v6, :cond_6e

    .line 551
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6e} :catch_82

    .line 543
    :cond_6e
    :goto_6e
    throw v10

    .line 541
    :catch_6f
    move-exception v10

    .line 544
    if-eqz v3, :cond_75

    .line 545
    :try_start_72
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 547
    :cond_75
    if-eqz v0, :cond_7a

    .line 548
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 550
    :cond_7a
    if-eqz v6, :cond_53

    .line 551
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7f} :catch_80

    goto :goto_53

    .line 552
    :catch_80
    move-exception v10

    goto :goto_53

    :catch_82
    move-exception v11

    goto :goto_6e
.end method


# virtual methods
.method public CreateDeviceIconThread(Lcom/samsung/api/DeviceItem;)V
    .registers 5
    .parameter "item"

    .prologue
    .line 559
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getDeviceIconHash()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->setDeviceIconArray(Ljava/util/HashMap;)V

    .line 561
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->DeviceIcon:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 589
    :goto_18
    return-void

    .line 565
    :cond_19
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getDeviceIconHash()Ljava/util/HashMap;

    move-result-object v0

    .line 567
    .local v0, icon:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p1}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v1, "DLNA"

    const-string v2, "CreateDeviceIconThread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter$1;-><init>(Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;Lcom/samsung/api/DeviceItem;Ljava/util/HashMap;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->DeviceIcon_Thread:Ljava/lang/Thread;

    .line 587
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->DeviceIcon_Thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_18
.end method

.method public enableCheckMode(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->checkMode:Z

    if-ne p1, v0, :cond_5

    .line 88
    :goto_4
    return-void

    .line 87
    :cond_5
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->checkMode:Z

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    if-nez p2, :cond_17

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->itemLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, itemView:Landroid/view/View;
    :goto_b
    if-ltz p1, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_19

    .line 114
    :cond_13
    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->parseNull(Landroid/view/View;)V

    .line 121
    :goto_16
    return-object v0

    .line 111
    .end local v0           #itemView:Landroid/view/View;
    :cond_17
    move-object v0, p2

    .restart local v0       #itemView:Landroid/view/View;
    goto :goto_b

    .line 115
    :cond_19
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/api/DeviceItem;

    if-eqz v1, :cond_29

    .line 116
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->parseDeviceItem(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_16

    .line 117
    :cond_29
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    if-eqz v1, :cond_39

    .line 118
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->parsePlayListItem(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_16

    .line 120
    :cond_39
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->parseSelectAll(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_16
.end method

.method protected parseDeviceItem(Landroid/view/View;Ljava/lang/Object;)V
    .registers 24
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 274
    const v17, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 275
    .local v11, radio:Landroid/widget/TextView;
    check-cast p2, Lcom/samsung/api/DeviceItem;

    .end local p2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->item:Lcom/samsung/api/DeviceItem;

    .line 276
    sget v17, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDensityDpi:I

    const/16 v18, 0x140

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_89

    .line 277
    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 281
    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->item:Lcom/samsung/api/DeviceItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v17

    if-eqz v17, :cond_91

    .line 282
    const v17, 0x7f090033

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 283
    const v17, 0x7f0200a1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 288
    :goto_4e
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 289
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/dlna/DLNAManager;->GetTapMode()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a1

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x2050001

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    :goto_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->item:Lcom/samsung/api/DeviceItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/api/DeviceItem;->getDeviceType()I

    move-result v17

    packed-switch v17, :pswitch_data_26e

    .line 464
    :goto_88
    return-void

    .line 279
    :cond_89
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_26

    .line 285
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->item:Lcom/samsung/api/DeviceItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e

    .line 292
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x205

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7b

    .line 297
    :pswitch_b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->item:Lcom/samsung/api/DeviceItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f090033

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13f

    .line 298
    const v17, 0x7f090033

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0200a1

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 301
    .local v5, get_resource_player_icon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 302
    .local v7, mydevice_icon:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 304
    .local v12, resize_mydevice:Landroid/graphics/Bitmap;
    sget v17, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDensityDpi:I

    const/16 v18, 0x140

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_108

    sget v17, Lcom/sec/android/app/dlna/ui/AddinActivity;->mDensityDpi:I

    const/16 v18, 0x140

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12e

    .line 305
    :cond_108
    const/16 v17, 0xa0

    const/16 v18, 0xa0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 309
    :goto_118
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 311
    .local v8, mydeviceicon:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v8, v0, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_88

    .line 307
    .end local v8           #mydeviceicon:Landroid/graphics/drawable/Drawable;
    :cond_12e
    const/16 v17, 0x50

    const/16 v18, 0x50

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_118

    .line 347
    .end local v5           #get_resource_player_icon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v7           #mydevice_icon:Landroid/graphics/Bitmap;
    .end local v12           #resize_mydevice:Landroid/graphics/Bitmap;
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->item:Lcom/samsung/api/DeviceItem;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->CreateDeviceIconThread(Lcom/samsung/api/DeviceItem;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->item:Lcom/samsung/api/DeviceItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getDivceIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 350
    .local v4, draw_icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020001

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 351
    .restart local v5       #get_resource_player_icon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 352
    .local v9, player_icon:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 354
    .local v13, resize_player:Landroid/graphics/Bitmap;
    sget v17, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDensityDpi:I

    const/16 v18, 0x140

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18a

    sget v17, Lcom/sec/android/app/dlna/ui/AddinActivity;->mDensityDpi:I

    const/16 v18, 0x140

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b2

    .line 355
    :cond_18a
    const/16 v17, 0xa0

    const/16 v18, 0xa0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 359
    :goto_19a
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 361
    .local v10, playericon:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_1c3

    .line 362
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v10, v0, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_88

    .line 357
    .end local v10           #playericon:Landroid/graphics/drawable/Drawable;
    :cond_1b2
    const/16 v17, 0x50

    const/16 v18, 0x50

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    goto :goto_19a

    .line 364
    .restart local v10       #playericon:Landroid/graphics/drawable/Drawable;
    :cond_1c3
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v4, v0, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_88

    .line 407
    .end local v4           #draw_icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #get_resource_player_icon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #player_icon:Landroid/graphics/Bitmap;
    .end local v10           #playericon:Landroid/graphics/drawable/Drawable;
    .end local v13           #resize_player:Landroid/graphics/Bitmap;
    :pswitch_1d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->item:Lcom/samsung/api/DeviceItem;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->CreateDeviceIconThread(Lcom/samsung/api/DeviceItem;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->item:Lcom/samsung/api/DeviceItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getDivceIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 410
    .restart local v4       #draw_icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 411
    .local v6, get_resource_server_icon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 412
    .local v15, server_icon:Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 414
    .local v14, resize_server:Landroid/graphics/Bitmap;
    sget v17, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDensityDpi:I

    const/16 v18, 0x140

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_21f

    sget v17, Lcom/sec/android/app/dlna/ui/AddinActivity;->mDensityDpi:I

    const/16 v18, 0x140

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24b

    .line 415
    :cond_21f
    const/16 v17, 0xa0

    const/16 v18, 0xa0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 419
    :goto_22f
    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 421
    .local v16, servericon:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_25c

    .line 422
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_88

    .line 417
    .end local v16           #servericon:Landroid/graphics/drawable/Drawable;
    :cond_24b
    const/16 v17, 0x50

    const/16 v18, 0x50

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_22f

    .line 425
    .restart local v16       #servericon:Landroid/graphics/drawable/Drawable;
    :cond_25c
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v4, v0, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_88

    .line 295
    nop

    :pswitch_data_26e
    .packed-switch 0x1
        :pswitch_1d4
        :pswitch_b7
    .end packed-switch
.end method

.method protected parsePlayListItem(Landroid/view/View;Ljava/lang/Object;)V
    .registers 20
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 128
    const v14, 0x7f070069

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 130
    .local v10, mediaName:Landroid/widget/TextView;
    const v14, 0x7f07006a

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 135
    .local v11, mediaValue:Landroid/widget/TextView;
    const v14, 0x7f070065

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 136
    .local v8, icon:Landroid/widget/ImageView;
    const v14, 0x7f070068

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 137
    .local v12, play_status:Landroid/widget/ImageView;
    const v14, 0x7f07006b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .local v2, cBox:Landroid/widget/CheckBox;
    move-object/from16 v9, p2

    .line 138
    check-cast v9, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 140
    .local v9, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 143
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_32e

    .line 223
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :goto_59
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDimed()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_66

    .line 228
    const v14, -0xbbbbbc

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    :cond_66
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->checkMode:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_29c

    .line 231
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_295

    .line 232
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 233
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isChecked()Z

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 241
    :goto_84
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2a3

    .line 243
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/api/ContentItem;->getResourceList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    .line 270
    :goto_a3
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 271
    return-void

    .line 145
    :pswitch_aa
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v14

    if-eqz v14, :cond_171

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v14

    if-eqz v14, :cond_171

    .line 147
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090073

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f4

    .line 149
    const v14, 0x7f020013

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x205

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_59

    .line 152
    :cond_f4
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090006

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_126

    .line 154
    const v14, 0x7f020013

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x205

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_59

    .line 157
    :cond_126
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090041

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_158

    .line 159
    const v14, 0x7f020013

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x205

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_59

    .line 163
    :cond_158
    const v14, 0x7f02001c

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x205

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_59

    .line 168
    :cond_171
    const v14, 0x7f020013

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x205

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_59

    .line 175
    :pswitch_18a
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isPlaying()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1c7

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->isListHilight()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1c7

    .line 176
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    const v14, 0x7f02001d

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x2050096

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    :goto_1bd
    if-nez v1, :cond_1de

    .line 185
    const v14, 0x7f02000a

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_59

    .line 180
    :cond_1c7
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x205

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1bd

    .line 187
    :cond_1de
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_59

    .line 191
    :pswitch_1e3
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isPlaying()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_220

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->isListHilight()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_220

    .line 192
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    const v14, 0x7f02001d

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x2050096

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :goto_216
    if-nez v1, :cond_237

    .line 201
    const v14, 0x7f020009

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_59

    .line 196
    :cond_220
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x205

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_216

    .line 203
    :cond_237
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_59

    .line 207
    :pswitch_23c
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isPlaying()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_279

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->isListHilight()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_279

    .line 208
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    const v14, 0x7f02001d

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x2050096

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    :goto_26f
    if-nez v1, :cond_290

    .line 217
    const v14, 0x7f02000b

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_59

    .line 212
    :cond_279
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x205

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_26f

    .line 219
    :cond_290
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_59

    .line 236
    :cond_295
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_84

    .line 239
    :cond_29c
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_84

    .line 247
    :cond_2a3
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_301

    .line 249
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDefaultContentResource()Lcom/samsung/api/ContentResource;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/api/ContentResource;->getSize()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2c8

    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDefaultContentResource()Lcom/samsung/api/ContentResource;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/api/ContentResource;->getSize()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e2

    .line 251
    :cond_2c8
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f090065

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a3

    .line 254
    :cond_2e2
    :try_start_2e2
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDefaultContentResource()Lcom/samsung/api/ContentResource;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/api/ContentResource;->getSize()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 256
    .local v6, file_size:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->context:Landroid/content/Context;

    invoke-static {v14, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2f9
    .catch Ljava/lang/NumberFormatException; {:try_start_2e2 .. :try_end_2f9} :catch_2fb

    goto/16 :goto_a3

    .line 257
    .end local v6           #file_size:J
    :catch_2fb
    move-exception v4

    .line 258
    .local v4, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_a3

    .line 262
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_301
    invoke-virtual {v9}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDefaultContentResource()Lcom/samsung/api/ContentResource;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/api/ContentResource;->getDuration()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, duration:Ljava/lang/String;
    const/16 v14, 0x2e

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 264
    .local v13, trim_point:I
    const/4 v14, -0x1

    if-ne v13, v14, :cond_31d

    .line 265
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a3

    .line 267
    :cond_31d
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a3

    .line 143
    nop

    :pswitch_data_32e
    .packed-switch 0x2
        :pswitch_aa
        :pswitch_18a
        :pswitch_23c
        :pswitch_1e3
    .end packed-switch
.end method

.method public setDeviceIconArray(Ljava/util/HashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, deviceIconArray:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->DeviceIcon:Ljava/util/HashMap;

    .line 603
    return-void
.end method

.method public setThumbnailArray(Ljava/util/HashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, thumbnailArray:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->mThumbnail:Ljava/util/HashMap;

    .line 617
    return-void
.end method

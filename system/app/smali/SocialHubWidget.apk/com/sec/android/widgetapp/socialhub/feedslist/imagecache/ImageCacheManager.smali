.class public Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;
.super Ljava/lang/Object;
.source "ImageCacheManager.java"


# static fields
.field private static volatile instance:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private imageMap:Ljava/util/HashMap;
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

.field private observer:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;

.field private requster:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

.field private urlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    .line 40
    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    .line 35
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    .line 36
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->service:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    .line 37
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->observer:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;

    .line 38
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->requster:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->observer:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->requster:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;
    .registers 5
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    if-nez v0, :cond_1c

    .line 49
    const-class v1, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    monitor-enter v1

    .line 50
    :try_start_7
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    if-nez v0, :cond_1b

    .line 52
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    .line 53
    const-string v0, "ImageCacheManager"

    const-string v2, "getInstance()"

    const-string v3, "instance is created"

    invoke-static {v0, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1f

    .line 57
    :cond_1c
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    return-object v0

    .line 55
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private declared-synchronized removeRequest(Ljava/lang/String;I)V
    .registers 7
    .parameter "url"
    .parameter "req_id"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    const-string v0, "ImageCacheManager"

    const-string v1, "removeRequest()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->requster:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->observer:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;->unregisterImage(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 217
    monitor-exit p0

    return-void

    .line 213
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "ctx"
    .parameter "url"
    .parameter "adapter"
    .parameter "img"
    .parameter "resource"

    .prologue
    const/4 v3, 0x0

    .line 94
    monitor-enter p0

    if-lez p5, :cond_7

    .line 95
    :try_start_4
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    :cond_7
    if-eqz p4, :cond_b

    if-nez p2, :cond_32

    .line 99
    :cond_b
    const-string v2, "ImageCacheManager"

    const-string v4, "getImage()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , img = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_6a

    move-object v1, v3

    .line 151
    :goto_30
    monitor-exit p0

    return-object v1

    .line 103
    :cond_32
    :try_start_32
    const-string v2, "ImageCacheManager"

    const-string v4, "getImage()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_6a

    .line 109
    :try_start_50
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 111
    if-eqz v1, :cond_70

    .line 117
    monitor-enter p4
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_67

    .line 119
    :try_start_5d
    invoke-virtual {p4}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {p4, v2, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 120
    monitor-exit p4
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_6d

    :try_start_65
    monitor-exit v4

    goto :goto_30

    .line 127
    :catchall_67
    move-exception v2

    monitor-exit v4
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_67

    :try_start_69
    throw v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 94
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catchall_6a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 121
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catchall_6d
    move-exception v2

    :try_start_6e
    monitor-exit p4
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v2

    .line 125
    :cond_70
    const-string v2, "ImageCacheManager"

    const-string v5, "getImage"

    const-string v6, "imageMap doesn\'t have bitmap"

    invoke-static {v2, v5, v6}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_67

    .line 133
    :try_start_7a
    monitor-enter p4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_6a

    .line 135
    :try_start_7b
    invoke-virtual {p4}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {p4, v2, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 137
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->service:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    if-eqz v2, :cond_95

    .line 139
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->observer:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;

    invoke-virtual {v2, p2, p4}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;->registerImage(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_92

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->requestImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 149
    :cond_92
    :goto_92
    monitor-exit p4

    move-object v1, v3

    .line 151
    goto :goto_30

    .line 146
    :cond_95
    const-string v2, "ImageCacheManager"

    const-string v4, "requestImage()"

    const-string v5, "service is null!!!"

    invoke-static {v2, v4, v5}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    .line 149
    :catchall_9f
    move-exception v2

    monitor-exit p4
    :try_end_a1
    .catchall {:try_start_7b .. :try_end_a1} :catchall_9f

    :try_start_a1
    throw v2
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_6a
.end method

.method public declared-synchronized requestImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;)V
    .registers 8
    .parameter "ctx"
    .parameter "url"
    .parameter "adapter"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->requster:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 183
    const-string v1, "ImageCacheManager"

    const-string v2, "requestImage()"

    const-string v3, "already request this image!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_33

    .line 204
    :goto_12
    monitor-exit p0

    return-void

    .line 187
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->requster:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_33

    .line 191
    :try_start_1c
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->service:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-virtual {v1, p1, p3, p2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->getImage(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, reqID:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_2e

    .line 195
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_2e
    monitor-exit v2

    goto :goto_12

    .end local v0           #reqID:I
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_30

    :try_start_32
    throw v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 181
    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized saveImage(Landroid/net/Uri;IZ)V
    .registers 14
    .parameter "uri"
    .parameter "reqID"
    .parameter "bSuccess"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_1
    const-string v6, "ImageCacheManager"

    const-string v7, "saveImage()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reqId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v3, 0x0

    .line 232
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    .line 233
    .local v1, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 236
    .local v4, src:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 238
    .local v5, url:Ljava/lang/String;
    if-nez p3, :cond_3b

    .line 240
    invoke-direct {p0, v5, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->removeRequest(Ljava/lang/String;I)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_5b

    .line 294
    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    .line 244
    :cond_3b
    if-nez p1, :cond_5e

    .line 246
    :try_start_3d
    const-string v6, "ImageCacheManager"

    const-string v7, "saveImage()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to draw image for uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, v5, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->removeRequest(Ljava/lang/String;I)V
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_5b

    goto :goto_39

    .line 229
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #src:Landroid/graphics/Bitmap;
    .end local v5           #url:Ljava/lang/String;
    :catchall_5b
    move-exception v6

    monitor-exit p0

    throw v6

    .line 253
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #src:Landroid/graphics/Bitmap;
    .restart local v5       #url:Ljava/lang/String;
    :cond_5e
    :try_start_5e
    sget-object v6, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_69} :catch_b9

    move-result-object v3

    .line 262
    :try_start_6a
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .end local v1           #is:Ljava/io/InputStream;
    invoke-direct {v1, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 263
    .restart local v1       #is:Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 264
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 266
    if-eqz v1, :cond_7e

    .line 268
    const/4 v6, 0x0

    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 271
    :cond_7e
    iget-object v6, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_90

    .line 273
    if-eqz v4, :cond_dd

    .line 275
    iget-object v6, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->updateImage(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_6a .. :try_end_90} :catchall_5b

    .line 286
    :cond_90
    :goto_90
    if-eqz v1, :cond_39

    .line 287
    :try_start_92
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_39

    .line 289
    :catch_96
    move-exception v0

    .line 291
    .local v0, e:Ljava/io/IOException;
    :try_start_97
    const-string v6, "ImageCacheManager"

    const-string v7, "saveImage()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error closing inputStream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    .line 255
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_b9
    move-exception v0

    .line 257
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "ImageCacheManager"

    const-string v7, "saveImage()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_39

    .line 280
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_dd
    const-string v6, "ImageCacheManager"

    const-string v7, "saveImage()"

    const-string v8, "src is null!!!!!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e6
    .catchall {:try_start_97 .. :try_end_e6} :catchall_5b

    goto :goto_90
.end method

.method public declared-synchronized setService(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V
    .registers 5
    .parameter "connector"

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->service:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    .line 80
    const-string v0, "ImageCacheManager"

    const-string v1, "setService()"

    const-string v2, "Service is connected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateImage(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->observer:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    .line 165
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->observer:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/SocialHubImageObserver;->notifyChange(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 166
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    :try_start_10
    throw v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_11

    .line 163
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

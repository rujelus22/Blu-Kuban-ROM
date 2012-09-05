.class public Lcom/sec/android/socialhub/image/ImageCacheManager;
.super Ljava/lang/Object;
.source "ImageCacheManager.java"


# static fields
.field private static volatile instance:Lcom/sec/android/socialhub/image/ImageCacheManager;

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

.field private observer:Lcom/sec/android/socialhub/image/SocialHubImageObserver;

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

.field private service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

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

    .line 30
    sput-object v0, Lcom/sec/android/socialhub/image/ImageCacheManager;->instance:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 38
    sput-object v0, Lcom/sec/android/socialhub/image/ImageCacheManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    .line 33
    iput-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    .line 34
    iput-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    .line 35
    iput-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->observer:Lcom/sec/android/socialhub/image/SocialHubImageObserver;

    .line 36
    iput-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->requster:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/image/ImageCacheManager;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    .line 65
    new-instance v0, Lcom/sec/android/socialhub/image/SocialHubImageObserver;

    invoke-direct {v0}, Lcom/sec/android/socialhub/image/SocialHubImageObserver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->observer:Lcom/sec/android/socialhub/image/SocialHubImageObserver;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->requster:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;
    .registers 5
    .parameter

    .prologue
    .line 45
    sget-object v0, Lcom/sec/android/socialhub/image/ImageCacheManager;->instance:Lcom/sec/android/socialhub/image/ImageCacheManager;

    if-nez v0, :cond_1c

    .line 47
    const-class v1, Lcom/sec/android/socialhub/image/ImageCacheManager;

    monitor-enter v1

    .line 48
    :try_start_7
    sget-object v0, Lcom/sec/android/socialhub/image/ImageCacheManager;->instance:Lcom/sec/android/socialhub/image/ImageCacheManager;

    if-nez v0, :cond_1b

    .line 50
    new-instance v0, Lcom/sec/android/socialhub/image/ImageCacheManager;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/image/ImageCacheManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/image/ImageCacheManager;->instance:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 51
    const-string v0, "ImageCacheManager"

    const-string v2, "getInstance()"

    const-string v3, "instance is created"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1f

    .line 55
    :cond_1c
    sget-object v0, Lcom/sec/android/socialhub/image/ImageCacheManager;->instance:Lcom/sec/android/socialhub/image/ImageCacheManager;

    return-object v0

    .line 53
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private declared-synchronized removeRequest(Ljava/lang/String;I)V
    .registers 6
    .parameter "url"
    .parameter "req_id"

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    const-string v0, "ImageCacheManager"

    const-string v1, "removeRequest()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->requster:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->observer:Lcom/sec/android/socialhub/image/SocialHubImageObserver;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->unregisterImage(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 200
    monitor-exit p0

    return-void

    .line 196
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearRequest()V
    .registers 8

    .prologue
    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->requster:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 284
    .local v1, reqSize:I
    iget-object v3, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 286
    .local v2, urlSize:I
    iget-object v3, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->requster:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object v3, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 288
    iget-object v3, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->observer:Lcom/sec/android/socialhub/image/SocialHubImageObserver;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->clear()V

    .line 290
    const-string v3, "ImageCacheManager"

    const-string v4, "clearRequest()"

    const-string v5, "////////////////////////////////////////////////////////////////////"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v3, "ImageCacheManager"

    const-string v4, "clearRequest()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "req["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], url["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] - request cleared."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v3, "ImageCacheManager"

    const-string v4, "clearRequest()"

    const-string v5, "////////////////////////////////////////////////////////////////////"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    .line 298
    .end local v1           #reqSize:I
    .end local v2           #urlSize:I
    :goto_57
    return-void

    .line 294
    :catch_58
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57
.end method

.method public declared-synchronized getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "ctx"
    .parameter "url"
    .parameter "adapter"
    .parameter "img"
    .parameter "resource"

    .prologue
    const/4 v3, 0x0

    .line 92
    monitor-enter p0

    if-lez p5, :cond_7

    .line 93
    :try_start_4
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :cond_7
    if-eqz p4, :cond_b

    if-nez p2, :cond_17

    .line 97
    :cond_b
    const-string v2, "ImageCacheManager"

    const-string v4, "getImage()"

    const-string v5, "url or img is null!!"

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_35

    move-object v1, v3

    .line 134
    :goto_15
    monitor-exit p0

    return-object v1

    .line 101
    :cond_17
    const/4 v1, 0x0

    .line 103
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_18
    iget-object v4, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_35

    .line 105
    :try_start_1b
    iget-object v2, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 107
    if-eqz v1, :cond_3b

    .line 113
    monitor-enter p4
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_32

    .line 115
    :try_start_28
    invoke-virtual {p4}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {p4, v2, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 116
    monitor-exit p4
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_38

    :try_start_30
    monitor-exit v4

    goto :goto_15

    .line 119
    :catchall_32
    move-exception v2

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 92
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catchall_35
    move-exception v2

    monitor-exit p0

    throw v2

    .line 117
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit p4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v2

    .line 119
    :cond_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_32

    .line 125
    :try_start_3c
    monitor-enter p4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_35

    .line 127
    :try_start_3d
    invoke-virtual {p4}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {p4, v2, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 128
    iget-object v2, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->observer:Lcom/sec/android/socialhub/image/SocialHubImageObserver;

    invoke-virtual {v2, p2, p4}, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->registerImage(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_50

    .line 130
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/socialhub/image/ImageCacheManager;->requestImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 132
    :cond_50
    monitor-exit p4

    move-object v1, v3

    .line 134
    goto :goto_15

    .line 132
    :catchall_53
    move-exception v2

    monitor-exit p4
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_53

    :try_start_55
    throw v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_35
.end method

.method public declared-synchronized requestImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;)V
    .registers 8
    .parameter "ctx"
    .parameter "url"
    .parameter "adapter"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    if-eqz v1, :cond_3a

    .line 164
    iget-object v1, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->requster:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 166
    const-string v1, "ImageCacheManager"

    const-string v2, "requestImage()"

    const-string v3, "already request this image!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_37

    .line 187
    :goto_16
    monitor-exit p0

    return-void

    .line 170
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->requster:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v2, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_37

    .line 174
    :try_start_20
    iget-object v1, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-virtual {v1, p1, p3, p2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->getImage(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, reqID:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_32

    .line 178
    iget-object v1, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_32
    monitor-exit v2

    goto :goto_16

    .end local v0           #reqID:I
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_34

    :try_start_36
    throw v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 162
    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1

    .line 185
    :cond_3a
    :try_start_3a
    const-string v1, "ImageCacheManager"

    const-string v2, "requestImage()"

    const-string v3, "service is null!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_37

    goto :goto_16
.end method

.method public declared-synchronized saveImage(Landroid/net/Uri;IZ)V
    .registers 14
    .parameter "uri"
    .parameter "reqID"
    .parameter "bSuccess"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    const-string v6, "ImageCacheManager"

    const-string v7, "saveImage()"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v3, 0x0

    .line 215
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    .line 216
    .local v1, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 219
    .local v4, src:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->urlMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 221
    .local v5, url:Ljava/lang/String;
    if-nez p3, :cond_20

    .line 223
    invoke-direct {p0, v5, p2}, Lcom/sec/android/socialhub/image/ImageCacheManager;->removeRequest(Ljava/lang/String;I)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2f

    .line 277
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    .line 227
    :cond_20
    if-nez p1, :cond_32

    .line 229
    :try_start_22
    const-string v6, "ImageCacheManager"

    const-string v7, "saveImage()"

    const-string v8, "Failed to draw image for uri null"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, v5, p2}, Lcom/sec/android/socialhub/image/ImageCacheManager;->removeRequest(Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_2f

    goto :goto_1e

    .line 212
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #src:Landroid/graphics/Bitmap;
    .end local v5           #url:Ljava/lang/String;
    :catchall_2f
    move-exception v6

    monitor-exit p0

    throw v6

    .line 236
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #src:Landroid/graphics/Bitmap;
    .restart local v5       #url:Ljava/lang/String;
    :cond_32
    :try_start_32
    sget-object v6, Lcom/sec/android/socialhub/image/ImageCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_3d} :catch_8d

    move-result-object v3

    .line 245
    :try_start_3e
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .end local v1           #is:Ljava/io/InputStream;
    invoke-direct {v1, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 246
    .restart local v1       #is:Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 247
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 249
    if-eqz v1, :cond_52

    .line 251
    const/4 v6, 0x0

    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 254
    :cond_52
    iget-object v6, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 256
    if-eqz v4, :cond_b1

    .line 258
    iget-object v6, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->updateImage(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_3e .. :try_end_64} :catchall_2f

    .line 269
    :cond_64
    :goto_64
    if-eqz v1, :cond_1e

    .line 270
    :try_start_66
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_1e

    .line 272
    :catch_6a
    move-exception v0

    .line 274
    .local v0, e:Ljava/io/IOException;
    :try_start_6b
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

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 238
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_8d
    move-exception v0

    .line 240
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

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1e

    .line 263
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_b1
    const-string v6, "ImageCacheManager"

    const-string v7, "saveImage()"

    const-string v8, "src is null!!!!!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_6b .. :try_end_ba} :catchall_2f

    goto :goto_64
.end method

.method public declared-synchronized setService(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)V
    .registers 5
    .parameter "connector"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->service:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    .line 78
    const-string v0, "ImageCacheManager"

    const-string v1, "setService()"

    const-string v2, "Service is connected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateImage(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->observer:Lcom/sec/android/socialhub/image/SocialHubImageObserver;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    .line 148
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->observer:Lcom/sec/android/socialhub/image/SocialHubImageObserver;

    iget-object v2, p0, Lcom/sec/android/socialhub/image/ImageCacheManager;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/socialhub/image/SocialHubImageObserver;->notifyChange(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 149
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    .line 150
    monitor-exit p0

    return-void

    .line 149
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

    .line 146
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

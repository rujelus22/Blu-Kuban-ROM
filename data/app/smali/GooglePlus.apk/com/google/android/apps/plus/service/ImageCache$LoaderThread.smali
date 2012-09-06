.class Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ImageCache.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private mPreloadRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadStatus:I

.field private final mRequests:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/content/ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/plus/service/ImageCache;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/service/ImageCache;Landroid/content/ContentResolver;)V
    .registers 4
    .parameter
    .parameter "resolver"

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    .line 1050
    const-string v0, "ImageCache"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1038
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    .line 1039
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    .line 1047
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    .line 1051
    return-void
.end method

.method private decodeImages()V
    .registers 8

    .prologue
    .line 1284
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1300
    :goto_8
    return-void

    .line 1288
    :cond_9
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/plus/content/ImageRequest;>;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/ImageRequest;

    .line 1290
    .local v2, request:Lcom/google/android/apps/plus/content/ImageRequest;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;
    invoke-static {v3}, Lcom/google/android/apps/plus/service/ImageCache;->access$200(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/support/v4/util/LruCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 1291
    .local v0, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    if-eqz v0, :cond_f

    .line 1292
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v4, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    const/4 v5, 0x1

    const/4 v6, 0x0

    #calls: Lcom/google/android/apps/plus/service/ImageCache;->deliverImage(Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V
    invoke-static {v3, v2, v4, v5, v6}, Lcom/google/android/apps/plus/service/ImageCache;->access$500(Lcom/google/android/apps/plus/service/ImageCache;Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V

    .line 1293
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 1299
    .end local v0           #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    .end local v2           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_36
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/apps/plus/service/ImageCache;->access$400(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8
.end method

.method private loadImagesFromDatabase(Z)V
    .registers 18
    .parameter "preloading"

    .prologue
    .line 1307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 1308
    .local v4, count:I
    if-nez v4, :cond_b

    .line 1389
    :goto_a
    return-void

    .line 1314
    :cond_b
    if-nez p1, :cond_2e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2e

    .line 1315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-interface {v13, v14}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2e

    .line 1317
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    .line 1321
    :cond_2e
    const/4 v1, 0x0

    .line 1322
    .local v1, avatarRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    const/4 v9, 0x0

    .line 1323
    .local v9, mediaRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/MediaImageRequest;>;"
    const/4 v10, 0x0

    .line 1325
    .local v10, remoteRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/ImageRequest;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_72

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/content/ImageRequest;

    .line 1326
    .local v11, request:Lcom/google/android/apps/plus/content/ImageRequest;
    instance-of v13, v11, Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v13, :cond_56

    .line 1327
    if-nez v1, :cond_50

    .line 1328
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #avatarRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1330
    .restart local v1       #avatarRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    :cond_50
    check-cast v11, Lcom/google/android/apps/plus/content/AvatarRequest;

    .end local v11           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1331
    .restart local v11       #request:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_56
    instance-of v13, v11, Lcom/google/android/apps/plus/content/MediaImageRequest;

    if-eqz v13, :cond_67

    .line 1332
    if-nez v9, :cond_61

    .line 1333
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #mediaRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/MediaImageRequest;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .restart local v9       #mediaRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/MediaImageRequest;>;"
    :cond_61
    check-cast v11, Lcom/google/android/apps/plus/content/MediaImageRequest;

    .end local v11           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1337
    .restart local v11       #request:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_67
    if-nez v10, :cond_6e

    .line 1338
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #remoteRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/ImageRequest;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    .restart local v10       #remoteRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/ImageRequest;>;"
    :cond_6e
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1344
    .end local v11           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_72
    if-eqz v9, :cond_b2

    .line 1345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/google/android/apps/plus/service/ImageCache;->access$800(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/google/android/apps/plus/content/EsMediaCache;->loadMedia(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v3

    .line 1348
    .local v3, avatars:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/apps/plus/content/MediaImageRequest;[B>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_88
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1349
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/MediaImageRequest;[B>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/content/MediaImageRequest;

    .line 1350
    .local v11, request:Lcom/google/android/apps/plus/content/MediaImageRequest;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    const/4 v15, 0x1

    move/from16 v0, p1

    #calls: Lcom/google/android/apps/plus/service/ImageCache;->deliverImage(Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V
    invoke-static {v14, v11, v13, v15, v0}, Lcom/google/android/apps/plus/service/ImageCache;->access$500(Lcom/google/android/apps/plus/service/ImageCache;Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v13, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_88

    .line 1355
    .end local v3           #avatars:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/apps/plus/content/MediaImageRequest;[B>;"
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/MediaImageRequest;[B>;"
    .end local v11           #request:Lcom/google/android/apps/plus/content/MediaImageRequest;
    :cond_b2
    if-eqz v1, :cond_f2

    .line 1356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/google/android/apps/plus/service/ImageCache;->access$800(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v1}, Lcom/google/android/apps/plus/content/EsAvatarData;->loadAvatars(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 1359
    .local v2, avatars:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1360
    .local v5, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 1361
    .local v11, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    const/4 v15, 0x1

    move/from16 v0, p1

    #calls: Lcom/google/android/apps/plus/service/ImageCache;->deliverImage(Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V
    invoke-static {v14, v11, v13, v15, v0}, Lcom/google/android/apps/plus/service/ImageCache;->access$500(Lcom/google/android/apps/plus/service/ImageCache;Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v13, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_c8

    .line 1371
    .end local v2           #avatars:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    .end local v5           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    .end local v11           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_f2
    if-eqz v10, :cond_11d

    .line 1372
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1373
    .local v12, requestCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_f9
    if-ge v7, v12, :cond_11d

    .line 1374
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/content/ImageRequest;

    .line 1377
    .local v11, request:Lcom/google/android/apps/plus/content/ImageRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v13}, Lcom/google/android/apps/plus/service/ImageCache;->access$900(Lcom/google/android/apps/plus/service/ImageCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11a

    .line 1378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/google/android/apps/plus/service/ImageCache;->access$800(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v11}, Lcom/google/android/apps/plus/service/RemoteImageLoader;->downloadImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 1373
    :cond_11a
    add-int/lit8 v7, v7, 0x1

    goto :goto_f9

    .line 1384
    .end local v7           #i:I
    .end local v11           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    .end local v12           #requestCount:I
    :cond_11d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_125
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/content/ImageRequest;

    .line 1385
    .restart local v11       #request:Lcom/google/android/apps/plus/content/ImageRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p1

    #calls: Lcom/google/android/apps/plus/service/ImageCache;->deliverImage(Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V
    invoke-static {v13, v11, v14, v15, v0}, Lcom/google/android/apps/plus/service/ImageCache;->access$500(Lcom/google/android/apps/plus/service/ImageCache;Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V

    goto :goto_125

    .line 1388
    .end local v11           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_13d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/google/android/apps/plus/service/ImageCache;->access$400(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a
.end method

.method private loadImagesInBackground()V
    .registers 3

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    #calls: Lcom/google/android/apps/plus/service/ImageCache;->obtainRequestsToDecode(Ljava/util/HashSet;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->access$600(Lcom/google/android/apps/plus/service/ImageCache;Ljava/util/HashSet;)V

    .line 1266
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1267
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->decodeImages()V

    .line 1278
    :goto_12
    return-void

    .line 1272
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    #calls: Lcom/google/android/apps/plus/service/ImageCache;->obtainRequestsToLoad(Ljava/util/HashSet;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->access$700(Lcom/google/android/apps/plus/service/ImageCache;Ljava/util/HashSet;)V

    .line 1273
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->loadImagesFromDatabase(Z)V

    .line 1277
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->continuePreloading()V

    goto :goto_12
.end method

.method private preloadAvatarsInBackground()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 1182
    iget v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    if-ne v3, v5, :cond_7

    .line 1229
    :goto_6
    return-void

    .line 1186
    :cond_7
    iget v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    if-nez v3, :cond_1c

    .line 1187
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1188
    iput v5, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    .line 1192
    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->continuePreloading()V

    goto :goto_6

    .line 1190
    :cond_19
    iput v6, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    goto :goto_15

    .line 1196
    :cond_1c
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;
    invoke-static {v3}, Lcom/google/android/apps/plus/service/ImageCache;->access$200(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/support/v4/util/LruCache;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/util/LruCache;->size()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCacheRedZoneBytes:I
    invoke-static {v4}, Lcom/google/android/apps/plus/service/ImageCache;->access$300(Lcom/google/android/apps/plus/service/ImageCache;)I

    move-result v4

    if-le v3, v4, :cond_31

    .line 1197
    iput v5, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    goto :goto_6

    .line 1201
    :cond_31
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, count:I
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1205
    .local v1, preloadSize:I
    :cond_3d
    :goto_3d
    if-lez v1, :cond_6c

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_6c

    .line 1206
    add-int/lit8 v1, v1, -0x1

    .line 1207
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 1208
    .local v2, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1210
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;
    invoke-static {v3}, Lcom/google/android/apps/plus/service/ImageCache;->access$200(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/support/v4/util/LruCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3d

    .line 1211
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1212
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 1216
    .end local v2           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_6c
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->loadImagesFromDatabase(Z)V

    .line 1218
    if-nez v1, :cond_73

    .line 1219
    iput v5, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    .line 1222
    :cond_73
    const-string v3, "ImageCache"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 1223
    const-string v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preloaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " avatars. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Cache size (bytes): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;
    invoke-static {v5}, Lcom/google/android/apps/plus/service/ImageCache;->access$200(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/support/v4/util/LruCache;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/util/LruCache;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->continuePreloading()V

    goto/16 :goto_6
.end method

.method private sendMessageAvatarChange(Ljava/lang/String;)V
    .registers 5
    .parameter "gaiaId"

    .prologue
    .line 1235
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/ImageCache;->access$400(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1236
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/ImageCache;->access$400(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1237
    return-void
.end method

.method private sendMessageMediaImageChange(Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;)V
    .registers 8
    .parameter "notification"

    .prologue
    .line 1243
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v2, p1, Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;->request:Lcom/google/android/apps/plus/content/MediaImageRequest;

    iget-object v3, p1, Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;->imageBytes:[B

    const/4 v4, 0x1

    const/4 v5, 0x0

    #calls: Lcom/google/android/apps/plus/service/ImageCache;->deliverImage(Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/ImageCache;->access$500(Lcom/google/android/apps/plus/service/ImageCache;Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V

    .line 1244
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/ImageCache;->access$400(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1246
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/ImageCache;->access$400(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1247
    return-void
.end method

.method private sendMessageRemoteImageChange(Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;)V
    .registers 8
    .parameter "notification"

    .prologue
    .line 1253
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v2, p1, Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;->request:Lcom/google/android/apps/plus/content/ImageRequest;

    iget-object v3, p1, Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;->imageBytes:[B

    const/4 v4, 0x1

    const/4 v5, 0x0

    #calls: Lcom/google/android/apps/plus/service/ImageCache;->deliverImage(Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/ImageCache;->access$500(Lcom/google/android/apps/plus/service/ImageCache;Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V

    .line 1254
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/ImageCache;->access$400(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1256
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImageCache;

    #getter for: Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/ImageCache;->access$400(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1257
    return-void
.end method


# virtual methods
.method public continuePreloading()V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 1081
    iget v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    if-ne v0, v1, :cond_6

    .line 1092
    :cond_5
    :goto_5
    return-void

    .line 1085
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->ensureHandler()V

    .line 1086
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1090
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5
.end method

.method public ensureHandler()V
    .registers 3

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 1055
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 1057
    :cond_f
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 1142
    :try_start_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_4c

    .line 1167
    :goto_6
    const/4 v2, 0x1

    .line 1171
    :goto_7
    return v2

    .line 1145
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1146
    .local v0, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1147
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1148
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mPreloadStatus:I

    .line 1149
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->preloadAvatarsInBackground()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_6

    .line 1168
    .end local v0           #requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    :catch_1d
    move-exception v1

    .line 1169
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    move v2, v3

    .line 1171
    goto :goto_7

    .line 1152
    .end local v1           #t:Ljava/lang/Throwable;
    :pswitch_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->preloadAvatarsInBackground()V

    goto :goto_6

    .line 1155
    :pswitch_2f
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->loadImagesInBackground()V

    goto :goto_6

    .line 1158
    :pswitch_33
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->sendMessageAvatarChange(Ljava/lang/String;)V

    goto :goto_6

    .line 1161
    :pswitch_3b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->sendMessageMediaImageChange(Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;)V

    goto :goto_6

    .line 1164
    :pswitch_43
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->sendMessageRemoteImageChange(Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_4a} :catch_1d

    goto :goto_6

    .line 1142
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_3b
        :pswitch_43
    .end packed-switch
.end method

.method public notifyAvatarChange(Ljava/lang/String;)V
    .registers 5
    .parameter "gaiaId"

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->ensureHandler()V

    .line 1109
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1110
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1111
    return-void
.end method

.method public notifyMediaImageChange(Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;)V
    .registers 5
    .parameter "notification"

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->ensureHandler()V

    .line 1119
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1121
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1122
    return-void
.end method

.method public notifyRemoteImageChange(Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;)V
    .registers 5
    .parameter "notification"

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->ensureHandler()V

    .line 1130
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1132
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1133
    return-void
.end method

.method public requestLoading()V
    .registers 3

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->ensureHandler()V

    .line 1099
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1100
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1101
    return-void
.end method

.method public startPreloading(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1067
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->ensureHandler()V

    .line 1069
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1071
    return-void
.end method

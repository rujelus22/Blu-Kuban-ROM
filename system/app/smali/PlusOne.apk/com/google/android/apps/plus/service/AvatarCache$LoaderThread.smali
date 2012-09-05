.class Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;
.super Landroid/os/HandlerThread;
.source "AvatarCache.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/AvatarCache;
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
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/plus/service/AvatarCache;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/service/AvatarCache;Landroid/content/ContentResolver;)V
    .registers 4
    .parameter
    .parameter "resolver"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 730
    const-string v0, "AvatarCache"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 718
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    .line 727
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    .line 731
    return-void
.end method

.method private loadAvatarsFromDatabase(Z)V
    .registers 12
    .parameter "preloading"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 906
    iget-object v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 907
    .local v1, count:I
    if-nez v1, :cond_b

    .line 935
    :goto_a
    return-void

    .line 913
    :cond_b
    if-nez p1, :cond_22

    iget v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    if-ne v6, v8, :cond_22

    .line 914
    iget-object v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-interface {v6, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 915
    iget-object v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 916
    iput v9, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    .line 920
    :cond_22
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 921
    .local v5, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    iget-object v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    #getter for: Lcom/google/android/apps/plus/service/AvatarCache;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/apps/plus/service/AvatarCache;->access$400(Lcom/google/android/apps/plus/service/AvatarCache;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/google/android/apps/plus/content/EsAvatarData;->loadAvatars(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 923
    .local v0, avatars:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 924
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 925
    .local v4, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget-object v7, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    #calls: Lcom/google/android/apps/plus/service/AvatarCache;->deliverBitmap(Lcom/google/android/apps/plus/content/AvatarRequest;[BZZ)V
    invoke-static {v7, v4, v6, v8, p1}, Lcom/google/android/apps/plus/service/AvatarCache;->access$500(Lcom/google/android/apps/plus/service/AvatarCache;Lcom/google/android/apps/plus/content/AvatarRequest;[BZZ)V

    .line 926
    iget-object v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 930
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    .end local v4           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_5e
    iget-object v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 931
    .restart local v4       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget-object v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    const/4 v7, 0x0

    const/4 v8, 0x0

    #calls: Lcom/google/android/apps/plus/service/AvatarCache;->deliverBitmap(Lcom/google/android/apps/plus/content/AvatarRequest;[BZZ)V
    invoke-static {v6, v4, v7, v8, p1}, Lcom/google/android/apps/plus/service/AvatarCache;->access$500(Lcom/google/android/apps/plus/service/AvatarCache;Lcom/google/android/apps/plus/content/AvatarRequest;[BZZ)V

    goto :goto_64

    .line 934
    .end local v4           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_78
    iget-object v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    #getter for: Lcom/google/android/apps/plus/service/AvatarCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/google/android/apps/plus/service/AvatarCache;->access$200(Lcom/google/android/apps/plus/service/AvatarCache;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a
.end method

.method private loadAvatarsInBackground()V
    .registers 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    #calls: Lcom/google/android/apps/plus/service/AvatarCache;->obtainRequestsToLoad(Ljava/util/HashSet;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->access$300(Lcom/google/android/apps/plus/service/AvatarCache;Ljava/util/HashSet;)V

    .line 897
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->loadAvatarsFromDatabase(Z)V

    .line 898
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->continuePreloading()V

    .line 899
    return-void
.end method

.method private notifyAvatarChange(Ljava/lang/Long;)V
    .registers 5
    .parameter "userId"

    .prologue
    .line 887
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    #getter for: Lcom/google/android/apps/plus/service/AvatarCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/AvatarCache;->access$200(Lcom/google/android/apps/plus/service/AvatarCache;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 888
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    #getter for: Lcom/google/android/apps/plus/service/AvatarCache;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/AvatarCache;->access$200(Lcom/google/android/apps/plus/service/AvatarCache;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 889
    return-void
.end method

.method private preloadAvatarsInBackground()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 834
    iget v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    if-ne v3, v5, :cond_7

    .line 881
    :goto_6
    return-void

    .line 838
    :cond_7
    iget v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    if-nez v3, :cond_1c

    .line 839
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 840
    iput v5, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    .line 844
    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->continuePreloading()V

    goto :goto_6

    .line 842
    :cond_19
    iput v6, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    goto :goto_15

    .line 848
    :cond_1c
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    #getter for: Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;
    invoke-static {v3}, Lcom/google/android/apps/plus/service/AvatarCache;->access$000(Lcom/google/android/apps/plus/service/AvatarCache;)Landroid/support/v4/util/LruCache;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/util/LruCache;->size()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    #getter for: Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCacheRedZoneBytes:I
    invoke-static {v4}, Lcom/google/android/apps/plus/service/AvatarCache;->access$100(Lcom/google/android/apps/plus/service/AvatarCache;)I

    move-result v4

    if-le v3, v4, :cond_31

    .line 849
    iput v5, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    goto :goto_6

    .line 853
    :cond_31
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 855
    const/4 v0, 0x0

    .line 856
    .local v0, count:I
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 857
    .local v1, preloadSize:I
    :cond_3d
    :goto_3d
    if-lez v1, :cond_6c

    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_6c

    .line 858
    add-int/lit8 v1, v1, -0x1

    .line 859
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 860
    .local v2, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 862
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    #getter for: Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;
    invoke-static {v3}, Lcom/google/android/apps/plus/service/AvatarCache;->access$000(Lcom/google/android/apps/plus/service/AvatarCache;)Landroid/support/v4/util/LruCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3d

    .line 863
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mRequests:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 868
    .end local v2           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_6c
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->loadAvatarsFromDatabase(Z)V

    .line 870
    if-nez v1, :cond_73

    .line 871
    iput v5, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    .line 874
    :cond_73
    const-string v3, "AvatarCache"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 875
    const-string v3, "AvatarCache"

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

    iget-object v5, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/AvatarCache;

    #getter for: Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;
    invoke-static {v5}, Lcom/google/android/apps/plus/service/AvatarCache;->access$000(Lcom/google/android/apps/plus/service/AvatarCache;)Landroid/support/v4/util/LruCache;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/util/LruCache;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->continuePreloading()V

    goto/16 :goto_6
.end method


# virtual methods
.method public continuePreloading()V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 761
    iget v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    if-ne v0, v1, :cond_6

    .line 772
    :cond_5
    :goto_5
    return-void

    .line 765
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->ensureHandler()V

    .line 766
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 770
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5
.end method

.method public ensureHandler()V
    .registers 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 735
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 737
    :cond_f
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 800
    :try_start_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3c

    .line 819
    :goto_6
    const/4 v2, 0x1

    .line 823
    :goto_7
    return v2

    .line 803
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 804
    .local v0, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 805
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 806
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mPreloadStatus:I

    .line 807
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->preloadAvatarsInBackground()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_6

    .line 820
    .end local v0           #requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    :catch_1d
    move-exception v1

    .line 821
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    move v2, v3

    .line 823
    goto :goto_7

    .line 810
    .end local v1           #t:Ljava/lang/Throwable;
    :pswitch_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->preloadAvatarsInBackground()V

    goto :goto_6

    .line 813
    :pswitch_2f
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->loadAvatarsInBackground()V

    goto :goto_6

    .line 816
    :pswitch_33
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->notifyAvatarChange(Ljava/lang/Long;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_3a} :catch_1d

    goto :goto_6

    .line 800
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
    .end packed-switch
.end method

.method public notifyChange(J)V
    .registers 7
    .parameter "userId"

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->ensureHandler()V

    .line 789
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 790
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 791
    return-void
.end method

.method public requestLoading()V
    .registers 3

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->ensureHandler()V

    .line 779
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 781
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
    .line 747
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->ensureHandler()V

    .line 749
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 751
    return-void
.end method

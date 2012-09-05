.class public Lcom/google/android/apps/books/common/CachingImageManagerProxy;
.super Ljava/lang/Object;
.source "CachingImageManagerProxy.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;,
        Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImageManager:Lcom/google/android/apps/books/common/ImageManager;

.field private final mReceiver:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;

.field private final mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/common/ImageManager;)V
    .registers 6
    .parameter "context"
    .parameter "imageManager"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v1, "missing context"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mContext:Landroid/content/Context;

    .line 54
    const-string v1, "missing image manager"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/common/ImageManager;

    iput-object v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mImageManager:Lcom/google/android/apps/books/common/ImageManager;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mResults:Ljava/util/Map;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;-><init>(Lcom/google/android/apps/books/common/CachingImageManagerProxy;)V

    iput-object v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mReceiver:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mReceiver:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->shouldLog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/common/CachingImageManagerProxy;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mResults:Ljava/util/Map;

    return-object v0
.end method

.method private static shouldLog()Z
    .registers 2

    .prologue
    .line 69
    const-string v0, "CachingImageManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mImageManager:Lcom/google/android/apps/books/common/ImageManager;

    invoke-interface {v0}, Lcom/google/android/apps/books/common/ImageManager;->clear()V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    return-void
.end method

.method public clearExceptions()V
    .registers 5

    .prologue
    .line 133
    iget-object v3, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mResults:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;>;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;

    .line 137
    .local v2, value:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;
    iget-object v3, v2, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 141
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;>;"
    .end local v2           #value:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;
    :cond_24
    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->clear()V

    .line 149
    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mReceiver:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ConnectivityChangeReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_a} :catch_b

    .line 155
    :cond_a
    :goto_a
    return-void

    .line 150
    :catch_b
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "CachingImageManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 152
    const-string v1, "CachingImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FYI exception in best-effort receiver unregistration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public getImage(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageManager$Ensurer;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;
    .registers 10
    .parameter "uri"
    .parameter "ensurer"
    .parameter "callback"

    .prologue
    .line 74
    iget-object v3, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mResults:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;

    .line 75
    .local v0, cacheValue:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;
    if-eqz v0, :cond_43

    .line 76
    invoke-static {}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->shouldLog()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 77
    const-string v3, "CachingImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning cached bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_34
    if-eqz p3, :cond_3d

    .line 81
    iget-object v3, v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->exception:Ljava/lang/Throwable;

    invoke-interface {p3, v3, v4}, Lcom/google/android/apps/books/common/ImageCallback;->onImage(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    .line 84
    :cond_3d
    new-instance v1, Lcom/google/android/apps/books/common/NullImageFuture;

    invoke-direct {v1}, Lcom/google/android/apps/books/common/NullImageFuture;-><init>()V

    .line 116
    .local v1, result:Lcom/google/android/apps/books/common/ImageFuture;
    :goto_42
    return-object v1

    .line 88
    .end local v1           #result:Lcom/google/android/apps/books/common/ImageFuture;
    :cond_43
    new-instance v2, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;-><init>(Lcom/google/android/apps/books/common/CachingImageManagerProxy;Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageCallback;)V

    .line 111
    .local v2, wrapperCallback:Lcom/google/android/apps/books/common/ImageCallback;
    invoke-static {}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->shouldLog()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 112
    const-string v3, "CachingImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting image for URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_66
    iget-object v3, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mImageManager:Lcom/google/android/apps/books/common/ImageManager;

    invoke-interface {v3, p1, p2, v2}, Lcom/google/android/apps/books/common/ImageManager;->getImage(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageManager$Ensurer;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;

    move-result-object v1

    .restart local v1       #result:Lcom/google/android/apps/books/common/ImageFuture;
    goto :goto_42
.end method

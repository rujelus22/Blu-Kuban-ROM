.class Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;
.super Lcom/android/volley/toolbox/ImageRequest;
.source "DrawingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/DrawingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PoolingImageRequest"
.end annotation


# instance fields
.field private final mPriority:Lcom/android/volley/Request$Priority;

.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Ljava/lang/String;Lcom/android/volley/Request$Priority;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .parameter
    .parameter "url"
    .parameter "priority"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request$Priority;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x0

    .line 685
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;->this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    .line 686
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v4, v3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 687
    iput-object p3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;->mPriority:Lcom/android/volley/Request$Priority;

    .line 688
    return-void
.end method


# virtual methods
.method public getPriority()Lcom/android/volley/Request$Priority;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;->mPriority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 694
    invoke-static {}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->access$100()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 696
    :try_start_5
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 699
    .local v1, data:[B
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 700
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 701
    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 702
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 703
    const/4 v4, 0x0

    array-length v6, v1

    invoke-static {v1, v4, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 706
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 708
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v4, v6, :cond_30

    .line 709
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;->this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #calls: Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;
    invoke-static {v4, v6, v7}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->access$200(Lcom/google/android/finsky/exploreactivity/DrawingUtils;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 711
    :cond_30
    const/4 v4, 0x0

    array-length v6, v1

    invoke-static {v1, v4, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 713
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_43

    .line 714
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4}, Lcom/android/volley/ParseError;-><init>()V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_4d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_40} :catch_50

    move-result-object v4

    :try_start_41
    monitor-exit v5
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_4d

    .line 721
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #data:[B
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_42
    return-object v4

    .line 716
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #data:[B
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_43
    :try_start_43
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_4d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_43 .. :try_end_4a} :catch_50

    move-result-object v4

    :try_start_4b
    monitor-exit v5

    goto :goto_42

    .line 723
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #data:[B
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_4d
    move-exception v4

    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4d

    throw v4

    .line 719
    :catch_50
    move-exception v2

    .line 720
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_51
    const-string v4, "OOM for %d byte image, url=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, v2}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    monitor-exit v5
    :try_end_74
    .catchall {:try_start_51 .. :try_end_74} :catchall_4d

    goto :goto_42
.end method

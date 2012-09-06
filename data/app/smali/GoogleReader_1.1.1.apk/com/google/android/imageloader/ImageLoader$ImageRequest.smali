.class Lcom/google/android/imageloader/ImageLoader$ImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageRequest"
.end annotation


# instance fields
.field private final mAdapterReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

.field private mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

.field private final mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadBitmap:Z

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/imageloader/ImageLoader;


# direct methods
.method private constructor <init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;Z)V
    .registers 9
    .parameter
    .parameter "adapter"
    .parameter "view"
    .parameter "url"
    .parameter "callback"
    .parameter "loadBitmap"

    .prologue
    const/4 v1, 0x0

    .line 690
    iput-object p1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    if-eqz p2, :cond_1f

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_d
    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mAdapterReference:Ljava/lang/ref/WeakReference;

    .line 692
    if-eqz p3, :cond_21

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_16
    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mImageViewReference:Ljava/lang/ref/WeakReference;

    .line 693
    iput-object p4, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    .line 694
    iput-object p5, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    .line 695
    iput-boolean p6, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mLoadBitmap:Z

    .line 696
    return-void

    :cond_1f
    move-object v0, v1

    .line 691
    goto :goto_d

    :cond_21
    move-object v0, v1

    .line 692
    goto :goto_16
.end method

.method public constructor <init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/BaseAdapter;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter "adapter"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 703
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;Z)V

    .line 704
    return-void
.end method

.method public constructor <init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "url"
    .parameter "callback"

    .prologue
    .line 711
    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;Z)V

    .line 712
    return-void
.end method

.method public constructor <init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Z)V
    .registers 11
    .parameter
    .parameter "url"
    .parameter "loadBitmap"

    .prologue
    const/4 v2, 0x0

    .line 718
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;Z)V

    .line 719
    return-void
.end method

.method private loadImage(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 723
    .local v0, connection:Ljava/net/URLConnection;
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    #getter for: Lcom/google/android/imageloader/ImageLoader;->mBitmapContentHandler:Ljava/net/ContentHandler;
    invoke-static {v1}, Lcom/google/android/imageloader/ImageLoader;->access$100(Lcom/google/android/imageloader/ImageLoader;)Ljava/net/ContentHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public execute()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 734
    :try_start_2
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mAdapterReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_10

    .line 736
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mAdapterReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v5

    .line 800
    :goto_f
    return v0

    .line 743
    :cond_10
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mImageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1e

    .line 745
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    move v0, v5

    .line 748
    goto :goto_f

    .line 753
    :cond_1e
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    #calls: Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;
    invoke-static {v0, v1}, Lcom/google/android/imageloader/ImageLoader;->access$200(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    .line 754
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    if-eqz v0, :cond_2e

    move v0, v4

    .line 755
    goto :goto_f

    .line 759
    :cond_2e
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    #calls: Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/google/android/imageloader/ImageLoader;->access$300(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 760
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3e

    move v0, v4

    .line 762
    goto :goto_f

    .line 765
    :cond_3e
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    #calls: Lcom/google/android/imageloader/ImageLoader;->getProtocol(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/imageloader/ImageLoader;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    #calls: Lcom/google/android/imageloader/ImageLoader;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    invoke-static {v1, v0}, Lcom/google/android/imageloader/ImageLoader;->access$500(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v0

    .line 767
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 769
    iget-boolean v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mLoadBitmap:Z
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_54} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_54} :catch_7d
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_54} :catch_a4

    if-eqz v0, :cond_89

    .line 771
    :try_start_56
    invoke-direct {p0, v1}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->loadImage(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_5c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_56 .. :try_end_5c} :catch_72
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_5c} :catch_7d
    .catch Ljava/lang/Error; {:try_start_56 .. :try_end_5c} :catch_a4

    .line 779
    :goto_5c
    :try_start_5c
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_87

    .line 780
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContentHandler returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_68} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_68} :catch_7d
    .catch Ljava/lang/Error; {:try_start_5c .. :try_end_68} :catch_a4

    .line 792
    :catch_68
    move-exception v0

    .line 793
    new-instance v1, Lcom/google/android/imageloader/ImageLoader$ImageError;

    invoke-direct {v1, v0}, Lcom/google/android/imageloader/ImageLoader$ImageError;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    move v0, v4

    .line 794
    goto :goto_f

    .line 776
    :catch_72
    move-exception v0

    :try_start_73
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 777
    invoke-direct {p0, v1}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->loadImage(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7c} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_7c} :catch_7d
    .catch Ljava/lang/Error; {:try_start_73 .. :try_end_7c} :catch_a4

    goto :goto_5c

    .line 795
    :catch_7d
    move-exception v0

    .line 796
    new-instance v1, Lcom/google/android/imageloader/ImageLoader$ImageError;

    invoke-direct {v1, v0}, Lcom/google/android/imageloader/ImageLoader$ImageError;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    move v0, v4

    .line 797
    goto :goto_f

    :cond_87
    move v0, v4

    .line 782
    goto :goto_f

    .line 784
    :cond_89
    :try_start_89
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    #getter for: Lcom/google/android/imageloader/ImageLoader;->mPrefetchContentHandler:Ljava/net/ContentHandler;
    invoke-static {v0}, Lcom/google/android/imageloader/ImageLoader;->access$600(Lcom/google/android/imageloader/ImageLoader;)Ljava/net/ContentHandler;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 786
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    #getter for: Lcom/google/android/imageloader/ImageLoader;->mPrefetchContentHandler:Ljava/net/ContentHandler;
    invoke-static {v1}, Lcom/google/android/imageloader/ImageLoader;->access$600(Lcom/google/android/imageloader/ImageLoader;)Ljava/net/ContentHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    .line 789
    :cond_9e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_a1} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_a1} :catch_7d
    .catch Ljava/lang/Error; {:try_start_89 .. :try_end_a1} :catch_a4

    move v0, v5

    .line 790
    goto/16 :goto_f

    .line 798
    :catch_a4
    move-exception v0

    .line 799
    new-instance v1, Lcom/google/android/imageloader/ImageLoader$ImageError;

    invoke-direct {v1, v0}, Lcom/google/android/imageloader/ImageLoader$ImageError;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    move v0, v4

    .line 800
    goto/16 :goto_f
.end method

.method public publishResult()V
    .registers 5

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 806
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/google/android/imageloader/ImageLoader;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/imageloader/ImageLoader;->access$700(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 812
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mAdapterReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5d

    .line 813
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mAdapterReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/BaseAdapter;

    .line 814
    if-eqz p0, :cond_24

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 818
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 856
    :cond_24
    :goto_24
    return-void

    .line 807
    :cond_25
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    #calls: Lcom/google/android/imageloader/ImageLoader;->hasError(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/google/android/imageloader/ImageLoader;->access$800(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 808
    const-string v0, "ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    invoke-virtual {v2}, Lcom/google/android/imageloader/ImageLoader$ImageError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    #calls: Lcom/google/android/imageloader/ImageLoader;->putError(Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageError;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/imageloader/ImageLoader;->access$900(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageError;)V

    goto :goto_d

    .line 826
    :cond_5d
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mImageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_24

    .line 827
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 828
    if-eqz v0, :cond_24

    .line 829
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->this$0:Lcom/google/android/imageloader/ImageLoader;

    #getter for: Lcom/google/android/imageloader/ImageLoader;->mImageViewBinding:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/imageloader/ImageLoader;->access$1000(Lcom/google/android/imageloader/ImageLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 830
    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 835
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 836
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_8f

    .line 837
    check-cast v1, Landroid/app/Activity;

    .line 838
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_24

    .line 842
    :cond_8f
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a4

    .line 843
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 844
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    if-eqz v1, :cond_24

    .line 845
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/android/imageloader/ImageLoader$Callback;->onImageLoaded(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_24

    .line 847
    :cond_a4
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    if-eqz v1, :cond_24

    .line 848
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    if-eqz v1, :cond_24

    .line 849
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;->mError:Lcom/google/android/imageloader/ImageLoader$ImageError;

    invoke-virtual {v3}, Lcom/google/android/imageloader/ImageLoader$ImageError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/imageloader/ImageLoader$Callback;->onImageError(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24
.end method

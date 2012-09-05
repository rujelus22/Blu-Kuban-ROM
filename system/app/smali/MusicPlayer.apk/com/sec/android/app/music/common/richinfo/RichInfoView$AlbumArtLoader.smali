.class Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;
.super Landroid/os/AsyncTask;
.source "RichInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumArtLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V
    .registers 2
    .parameter

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "obj"

    .prologue
    .line 1436
    const/4 v8, 0x0

    aget-object v8, p1, v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->mView:Landroid/widget/ImageView;

    .line 1437
    iget-object v8, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->mView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v8, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1438
    iget-object v8, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1440
    const/4 v8, 0x1

    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/String;

    .line 1441
    .local v0, artwork:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://image.allmusic.com/02/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1443
    .local v6, imageLink:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1444
    .local v3, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 1446
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_30
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1447
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 1448
    .local v4, conn:Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 1450
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_65
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_45} :catch_56

    .line 1451
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_45
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_71
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_74

    move-result-object v3

    .line 1456
    if-eqz v2, :cond_4e

    .line 1457
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_50

    :cond_4e
    move-object v1, v2

    .line 1462
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #conn:Ljava/net/URLConnection;
    .end local v7           #url:Ljava/net/URL;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :cond_4f
    :goto_4f
    return-object v3

    .line 1458
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #conn:Ljava/net/URLConnection;
    .restart local v7       #url:Ljava/net/URL;
    :catch_50
    move-exception v5

    .line 1459
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 1461
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4f

    .line 1452
    .end local v4           #conn:Ljava/net/URLConnection;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #url:Ljava/net/URL;
    :catch_56
    move-exception v5

    .line 1453
    .restart local v5       #e:Ljava/io/IOException;
    :goto_57
    :try_start_57
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_65

    .line 1456
    if-eqz v1, :cond_4f

    .line 1457
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_4f

    .line 1458
    :catch_60
    move-exception v5

    .line 1459
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 1455
    .end local v5           #e:Ljava/io/IOException;
    :catchall_65
    move-exception v8

    .line 1456
    :goto_66
    if-eqz v1, :cond_6b

    .line 1457
    :try_start_68
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 1460
    :cond_6b
    :goto_6b
    throw v8

    .line 1458
    :catch_6c
    move-exception v5

    .line 1459
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6b

    .line 1455
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #conn:Ljava/net/URLConnection;
    .restart local v7       #url:Ljava/net/URL;
    :catchall_71
    move-exception v8

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_66

    .line 1452
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_74
    move-exception v5

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_57
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1428
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bm"

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_f

    .line 1469
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1470
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1473
    :cond_f
    if-eqz p1, :cond_17

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1478
    :goto_16
    return-void

    .line 1476
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->mView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    #getter for: Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->access$100(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_16
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1428
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView$AlbumArtLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

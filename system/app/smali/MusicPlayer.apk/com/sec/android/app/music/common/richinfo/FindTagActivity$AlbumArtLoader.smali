.class Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;
.super Landroid/os/AsyncTask;
.source "FindTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/FindTagActivity;
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

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "obj"

    .prologue
    .line 970
    const/4 v8, 0x0

    aget-object v8, p1, v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->mView:Landroid/widget/ImageView;

    .line 971
    iget-object v8, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->mView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v8, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 972
    iget-object v8, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 974
    const/4 v8, 0x1

    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/String;

    .line 975
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

    .line 977
    .local v6, imageLink:Ljava/lang/String;
    const/4 v3, 0x0

    .line 978
    .local v3, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 980
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_30
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 981
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 982
    .local v4, conn:Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 983
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_65
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_45} :catch_56

    .line 984
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_45
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_71
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_74

    move-result-object v3

    .line 989
    if-eqz v2, :cond_4e

    .line 990
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_50

    :cond_4e
    move-object v1, v2

    .line 995
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #conn:Ljava/net/URLConnection;
    .end local v7           #url:Ljava/net/URL;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :cond_4f
    :goto_4f
    return-object v3

    .line 991
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #conn:Ljava/net/URLConnection;
    .restart local v7       #url:Ljava/net/URL;
    :catch_50
    move-exception v5

    .line 992
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 994
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4f

    .line 985
    .end local v4           #conn:Ljava/net/URLConnection;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #url:Ljava/net/URL;
    :catch_56
    move-exception v5

    .line 986
    .restart local v5       #e:Ljava/io/IOException;
    :goto_57
    :try_start_57
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_65

    .line 989
    if-eqz v1, :cond_4f

    .line 990
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_4f

    .line 991
    :catch_60
    move-exception v5

    .line 992
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 988
    .end local v5           #e:Ljava/io/IOException;
    :catchall_65
    move-exception v8

    .line 989
    :goto_66
    if-eqz v1, :cond_6b

    .line 990
    :try_start_68
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 993
    :cond_6b
    :goto_6b
    throw v8

    .line 991
    :catch_6c
    move-exception v5

    .line 992
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6b

    .line 988
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

    .line 985
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
    .line 963
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bm"

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_f

    .line 1002
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1003
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1006
    :cond_f
    if-eqz p1, :cond_17

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1011
    :goto_16
    return-void

    .line 1009
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->mView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/Context;

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
    .line 963
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

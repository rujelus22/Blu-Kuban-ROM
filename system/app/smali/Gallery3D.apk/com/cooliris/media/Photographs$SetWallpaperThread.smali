.class Lcom/cooliris/media/Photographs$SetWallpaperThread;
.super Ljava/lang/Thread;
.source "Photographs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Photographs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetWallpaperThread"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/os/Handler;Landroid/content/Context;Ljava/io/File;)V
    .registers 5
    .parameter "bitmap"
    .parameter "handler"
    .parameter "context"
    .parameter "file"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    iput-object p2, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p3, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mContext:Landroid/content/Context;

    .line 116
    iput-object p4, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mFile:Ljava/io/File;

    .line 117
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 121
    const/4 v3, 0x0

    .line 123
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {}, Lcom/cooliris/media/Photographs;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 124
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/data/com.cooliris.media/files"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_18

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_18
    const-string v2, "zzzzzz_lockscreen_wallpaper.jpg"

    .line 129
    .local v2, mediaFile:Ljava/lang/String;
    iget-object v4, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 130
    iget-object v4, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 132
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #mediaFile:Ljava/lang/String;
    :cond_2a
    iget-object v4, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 133
    iget-object v4, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3b} :catch_49

    .line 137
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    iget-object v4, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    iget-object v4, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 142
    :goto_48
    return-void

    .line 134
    :catch_49
    move-exception v1

    .line 135
    .local v1, e:Ljava/io/IOException;
    :try_start_4a
    const-string v4, "Wallpaper"

    const-string v5, "Failed to set wallpaper."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_5f

    .line 137
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    iget-object v4, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    iget-object v4, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_48

    .line 137
    .end local v1           #e:Ljava/io/IOException;
    :catchall_5f
    move-exception v4

    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    iget-object v5, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    iget-object v5, p0, Lcom/cooliris/media/Photographs$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw v4
.end method

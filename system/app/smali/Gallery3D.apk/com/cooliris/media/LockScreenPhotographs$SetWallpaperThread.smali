.class Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;
.super Ljava/lang/Thread;
.source "LockScreenPhotographs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/LockScreenPhotographs;
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
    .line 117
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mBitmap:Landroid/graphics/Bitmap;

    .line 119
    iput-object p2, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    .line 120
    iput-object p3, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mContext:Landroid/content/Context;

    .line 121
    iput-object p4, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mFile:Ljava/io/File;

    .line 122
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 127
    const/4 v3, 0x0

    .line 130
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/data/com.cooliris.media/files"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_12

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 133
    :cond_12
    const-string v2, "zzzzzz_lockscreen_wallpaper.png"

    .line 134
    .local v2, mediaFile:Ljava/lang/String;
    iget-object v4, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 135
    iget-object v4, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 136
    iget-object v4, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_56
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_32} :catch_40

    .line 142
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 143
    iget-object v4, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 144
    iget-object v4, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 146
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #mediaFile:Ljava/lang/String;
    :goto_3f
    return-void

    .line 139
    :catch_40
    move-exception v1

    .line 140
    .local v1, e:Ljava/io/IOException;
    :try_start_41
    const-string v4, "Wallpaper"

    const-string v5, "Failed to set wallpaper."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_56

    .line 142
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 143
    iget-object v4, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 144
    iget-object v4, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_3f

    .line 142
    .end local v1           #e:Ljava/io/IOException;
    :catchall_56
    move-exception v4

    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 143
    iget-object v5, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 144
    iget-object v5, p0, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw v4
.end method

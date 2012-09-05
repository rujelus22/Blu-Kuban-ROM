.class public Lcom/cooliris/media/LockScreenPhotographs;
.super Landroid/app/Activity;
.source "LockScreenPhotographs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;
    }
.end annotation


# instance fields
.field private mDoLaunch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTempFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/LockScreenPhotographs;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/LockScreenPhotographs;->mDoLaunch:Z

    .line 65
    new-instance v0, Lcom/cooliris/media/LockScreenPhotographs$1;

    invoke-direct {v0, p0}, Lcom/cooliris/media/LockScreenPhotographs$1;-><init>(Lcom/cooliris/media/LockScreenPhotographs;)V

    iput-object v0, p0, Lcom/cooliris/media/LockScreenPhotographs;->mHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/LockScreenPhotographs;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cooliris/media/LockScreenPhotographs;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cooliris/media/LockScreenPhotographs;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cooliris/media/LockScreenPhotographs;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cooliris/media/LockScreenPhotographs;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cooliris/media/LockScreenPhotographs;->closeProgressDialog()V

    return-void
.end method

.method private declared-synchronized closeProgressDialog()V
    .registers 4

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/cooliris/media/LockScreenPhotographs;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_d

    .line 152
    iget-object v1, p0, Lcom/cooliris/media/LockScreenPhotographs;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cooliris/media/LockScreenPhotographs;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    .line 158
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 155
    :catch_f
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    :try_start_10
    const-string v1, "Wallpaper"

    const-string v2, "mProgressDialog.dismiss() failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_d

    .line 151
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected formatIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 216
    const-string v2, "temp-wallpaper"

    invoke-virtual {p0, v2}, Lcom/cooliris/media/LockScreenPhotographs;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs;->mTempFile:Ljava/io/File;

    .line 217
    iget-object v2, p0, Lcom/cooliris/media/LockScreenPhotographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 219
    invoke-static {}, Lcom/cooliris/media/Utils;->getScreenWidth()I

    move-result v1

    .line 220
    .local v1, width:I
    invoke-static {}, Lcom/cooliris/media/Utils;->getScreenHeight()I

    move-result v0

    .line 226
    .local v0, height:I
    const-string v2, "outputX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v2, "outputY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v2, "aspectX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v2, "aspectY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v2, "scale"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    const-string v2, "noFaceDetection"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    const-string v2, "output"

    iget-object v3, p0, Lcom/cooliris/media/LockScreenPhotographs;->mTempFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 241
    const/4 v5, 0x1

    if-eq p1, v5, :cond_7

    const/4 v5, 0x2

    if-ne p1, v5, :cond_9c

    :cond_7
    const/4 v5, -0x1

    if-ne p2, v5, :cond_9c

    if-eqz p3, :cond_9c

    .line 243
    const/4 v3, 0x0

    .line 245
    .local v3, s:Ljava/io/InputStream;
    :try_start_d
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/cooliris/media/LockScreenPhotographs;->mTempFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_14} :catch_a6

    .line 247
    .end local v3           #s:Ljava/io/InputStream;
    .local v4, s:Ljava/io/InputStream;
    :try_start_14
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3f

    .line 249
    const-string v5, "Wallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set wallpaper. Couldn\'t get bitmap for path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cooliris/media/LockScreenPhotographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_34
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/cooliris/media/LockScreenPhotographs;->mDoLaunch:Z
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_52

    .line 257
    :try_start_37
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3a} :catch_57

    .line 263
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_82

    move-object v3, v4

    .line 280
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #s:Ljava/io/InputStream;
    :goto_3e
    return-void

    .line 252
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #s:Ljava/io/InputStream;
    :cond_3f
    :try_start_3f
    iget-object v5, p0, Lcom/cooliris/media/LockScreenPhotographs;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    new-instance v5, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;

    iget-object v6, p0, Lcom/cooliris/media/LockScreenPhotographs;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/cooliris/media/LockScreenPhotographs;->mTempFile:Ljava/io/File;

    invoke-direct {v5, v0, v6, p0, v7}, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;-><init>(Landroid/graphics/Bitmap;Landroid/os/Handler;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v5}, Lcom/cooliris/media/LockScreenPhotographs$SetWallpaperThread;->start()V
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_52

    goto :goto_34

    .line 257
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_52
    move-exception v5

    :try_start_53
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v5
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_57} :catch_57

    .line 259
    :catch_57
    move-exception v2

    move-object v3, v4

    .line 260
    .end local v4           #s:Ljava/io/InputStream;
    .local v2, ex:Ljava/io/FileNotFoundException;
    .restart local v3       #s:Ljava/io/InputStream;
    :goto_59
    :try_start_59
    const-string v5, "Wallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cooliris/media/LockScreenPhotographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_59 .. :try_end_73} :catchall_8d

    .line 263
    :try_start_73
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_88

    goto :goto_3e

    .line 264
    :catch_77
    move-exception v1

    .line 266
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .line 264
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    .end local v3           #s:Ljava/io/InputStream;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #s:Ljava/io/InputStream;
    :catch_7c
    move-exception v1

    .line 266
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 270
    .end local v4           #s:Ljava/io/InputStream;
    .restart local v3       #s:Ljava/io/InputStream;
    goto :goto_3e

    .line 267
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #s:Ljava/io/InputStream;
    .restart local v4       #s:Ljava/io/InputStream;
    :catch_82
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 271
    .end local v4           #s:Ljava/io/InputStream;
    .restart local v3       #s:Ljava/io/InputStream;
    goto :goto_3e

    .line 267
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #ex:Ljava/io/FileNotFoundException;
    :catch_88
    move-exception v1

    .line 269
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 262
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catchall_8d
    move-exception v5

    .line 263
    :goto_8e
    :try_start_8e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_97

    .line 270
    :goto_91
    throw v5

    .line 264
    :catch_92
    move-exception v1

    .line 266
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_91

    .line 267
    .end local v1           #e:Ljava/io/IOException;
    :catch_97
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_91

    .line 277
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #s:Ljava/io/InputStream;
    :cond_9c
    invoke-virtual {p0, v6}, Lcom/cooliris/media/LockScreenPhotographs;->setResult(I)V

    .line 278
    invoke-virtual {p0}, Lcom/cooliris/media/LockScreenPhotographs;->finish()V

    goto :goto_3e

    .line 262
    .restart local v4       #s:Ljava/io/InputStream;
    :catchall_a3
    move-exception v5

    move-object v3, v4

    .end local v4           #s:Ljava/io/InputStream;
    .restart local v3       #s:Ljava/io/InputStream;
    goto :goto_8e

    .line 259
    :catch_a6
    move-exception v2

    goto :goto_59
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    if-eqz p1, :cond_1a

    .line 164
    const-string v0, "do_launch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cooliris/media/LockScreenPhotographs;->mDoLaunch:Z

    .line 165
    new-instance v0, Ljava/io/File;

    const-string v1, "temp_file_path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cooliris/media/LockScreenPhotographs;->mTempFile:Ljava/io/File;

    .line 167
    :cond_1a
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/cooliris/media/LockScreenPhotographs;->closeProgressDialog()V

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 180
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    iget-boolean v2, p0, Lcom/cooliris/media/LockScreenPhotographs;->mDoLaunch:Z

    if-nez v2, :cond_a

    .line 209
    :goto_9
    return-void

    .line 188
    :cond_a
    invoke-virtual {p0}, Lcom/cooliris/media/LockScreenPhotographs;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 189
    .local v0, imageToUse:Landroid/net/Uri;
    if-eqz v0, :cond_35

    .line 190
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.CropImage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    const-string v2, "set_homescreen"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    const-string v2, "set_lockscreen"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v1}, Lcom/cooliris/media/LockScreenPhotographs;->formatIntent(Landroid/content/Intent;)V

    .line 198
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/cooliris/media/LockScreenPhotographs;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 200
    .end local v1           #intent:Landroid/content/Intent;
    :cond_35
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v2, "set_wallpaper"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    const-string v2, "set_homescreen"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    const-string v2, "set_lockscreen"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v1}, Lcom/cooliris/media/LockScreenPhotographs;->formatIntent(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0, v1, v4}, Lcom/cooliris/media/LockScreenPhotographs;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    const-string v0, "do_launch"

    iget-boolean v1, p0, Lcom/cooliris/media/LockScreenPhotographs;->mDoLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    const-string v0, "temp_file_path"

    iget-object v1, p0, Lcom/cooliris/media/LockScreenPhotographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

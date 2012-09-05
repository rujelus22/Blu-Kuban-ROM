.class public Lcom/cooliris/media/Photographs;
.super Landroid/app/Activity;
.source "Photographs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/Photographs$SetWallpaperThread;
    }
.end annotation


# static fields
.field private static bLockScreen:Z


# instance fields
.field private mApp:Lcom/cooliris/app/App;

.field private mDoLaunch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cooliris/media/Photographs;->bLockScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/cooliris/media/Photographs;->mApp:Lcom/cooliris/app/App;

    .line 64
    iput-object v0, p0, Lcom/cooliris/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/Photographs;->mDoLaunch:Z

    .line 72
    new-instance v0, Lcom/cooliris/media/Photographs$1;

    invoke-direct {v0, p0}, Lcom/cooliris/media/Photographs$1;-><init>(Lcom/cooliris/media/Photographs;)V

    iput-object v0, p0, Lcom/cooliris/media/Photographs;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/Photographs;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cooliris/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cooliris/media/Photographs;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cooliris/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/cooliris/media/Photographs;->bLockScreen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/cooliris/media/Photographs;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cooliris/media/Photographs;->closeProgressDialog()V

    return-void
.end method

.method private declared-synchronized closeProgressDialog()V
    .registers 4

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/cooliris/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_d

    .line 148
    iget-object v1, p0, Lcom/cooliris/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cooliris/media/Photographs;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    .line 154
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 151
    :catch_f
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    :try_start_10
    const-string v1, "Wallpaper"

    const-string v2, "mProgressDialog.dismiss() failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_d

    .line 147
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

    .line 228
    const-string v2, "temp-wallpaper"

    invoke-virtual {p0, v2}, Lcom/cooliris/media/Photographs;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/Photographs;->mTempFile:Ljava/io/File;

    .line 229
    iget-object v2, p0, Lcom/cooliris/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 234
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUse_Tn_Us_Common:Z

    if-nez v2, :cond_1a

    sget-boolean v2, Lcom/cooliris/media/Utils;->mUse_U1_Us_USCC:Z

    if-eqz v2, :cond_57

    .line 235
    :cond_1a
    invoke-static {}, Lcom/cooliris/media/Utils;->getScreenWidth()I

    move-result v1

    .line 236
    .local v1, width:I
    invoke-static {}, Lcom/cooliris/media/Utils;->getScreenHeight()I

    move-result v0

    .line 242
    .local v0, height:I
    :goto_22
    const-string v2, "outputX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v2, "outputY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string v2, "aspectX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const-string v2, "aspectY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v2, "scale"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const-string v2, "noFaceDetection"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string v2, "output"

    iget-object v3, p0, Lcom/cooliris/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    return-void

    .line 238
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_57
    invoke-static {}, Lcom/cooliris/media/Utils;->getScreenWidth()I

    move-result v2

    mul-int/lit8 v1, v2, 0x2

    .line 239
    .restart local v1       #width:I
    invoke-static {}, Lcom/cooliris/media/Utils;->getScreenHeight()I

    move-result v0

    .restart local v0       #height:I
    goto :goto_22
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 257
    const/4 v5, 0x1

    if-eq p1, v5, :cond_8

    const/4 v5, 0x2

    if-ne p1, v5, :cond_bb

    :cond_8
    if-ne p2, v8, :cond_bb

    if-eqz p3, :cond_bb

    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, s:Ljava/io/InputStream;
    const-string v5, "lockscreen_ok"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/cooliris/media/Photographs;->bLockScreen:Z

    .line 262
    :try_start_15
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/cooliris/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_c4
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1c} :catch_c6

    .line 264
    .end local v3           #s:Ljava/io/InputStream;
    .local v4, s:Ljava/io/InputStream;
    :try_start_1c
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_4c

    .line 266
    const-string v5, "Wallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set wallpaper. Couldn\'t get bitmap for path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cooliris/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_3c
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/cooliris/media/Photographs;->mDoLaunch:Z
    :try_end_3f
    .catchall {:try_start_1c .. :try_end_3f} :catchall_a3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_3f} :catch_5f

    .line 276
    :try_start_3f
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_42} :catch_7c

    .line 282
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_42
    if-eqz v4, :cond_47

    .line 283
    :try_start_44
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_b0

    :cond_47
    move-object v3, v4

    .line 288
    .end local v4           #s:Ljava/io/InputStream;
    .restart local v3       #s:Ljava/io/InputStream;
    :cond_48
    :goto_48
    invoke-virtual {p0, v8}, Lcom/cooliris/media/Photographs;->setResult(I)V

    .line 294
    .end local v3           #s:Ljava/io/InputStream;
    :goto_4b
    return-void

    .line 269
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #s:Ljava/io/InputStream;
    :cond_4c
    :try_start_4c
    iget-object v5, p0, Lcom/cooliris/media/Photographs;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    new-instance v5, Lcom/cooliris/media/Photographs$SetWallpaperThread;

    iget-object v6, p0, Lcom/cooliris/media/Photographs;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/cooliris/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-direct {v5, v0, v6, p0, v7}, Lcom/cooliris/media/Photographs$SetWallpaperThread;-><init>(Landroid/graphics/Bitmap;Landroid/os/Handler;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v5}, Lcom/cooliris/media/Photographs$SetWallpaperThread;->start()V
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_a3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4c .. :try_end_5e} :catch_5f

    goto :goto_3c

    .line 273
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_5f
    move-exception v1

    .line 274
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_60
    const-string v5, "Wallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_a3

    .line 276
    :try_start_78
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_42

    .line 278
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_7c
    move-exception v2

    move-object v3, v4

    .line 279
    .end local v4           #s:Ljava/io/InputStream;
    .local v2, ex:Ljava/io/FileNotFoundException;
    .restart local v3       #s:Ljava/io/InputStream;
    :goto_7e
    :try_start_7e
    const-string v5, "Wallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cooliris/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_c4

    .line 282
    if-eqz v3, :cond_48

    .line 283
    :try_start_9a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_48

    .line 284
    :catch_9e
    move-exception v1

    .line 285
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .line 276
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    .end local v3           #s:Ljava/io/InputStream;
    .restart local v4       #s:Ljava/io/InputStream;
    :catchall_a3
    move-exception v5

    :try_start_a4
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v5
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_a8} :catch_7c

    .line 281
    :catchall_a8
    move-exception v5

    move-object v3, v4

    .line 282
    .end local v4           #s:Ljava/io/InputStream;
    .restart local v3       #s:Ljava/io/InputStream;
    :goto_aa
    if-eqz v3, :cond_af

    .line 283
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b6

    .line 286
    :cond_af
    :goto_af
    throw v5

    .line 284
    .end local v3           #s:Ljava/io/InputStream;
    .restart local v4       #s:Ljava/io/InputStream;
    :catch_b0
    move-exception v1

    .line 285
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 287
    .end local v4           #s:Ljava/io/InputStream;
    .restart local v3       #s:Ljava/io/InputStream;
    goto :goto_48

    .line 284
    .end local v1           #e:Ljava/io/IOException;
    :catch_b6
    move-exception v1

    .line 285
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    .line 290
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #s:Ljava/io/InputStream;
    :cond_bb
    invoke-virtual {p0, v6}, Lcom/cooliris/media/Photographs;->setResult(I)V

    .line 291
    iput-boolean v6, p0, Lcom/cooliris/media/Photographs;->mDoLaunch:Z

    .line 292
    invoke-virtual {p0}, Lcom/cooliris/media/Photographs;->finish()V

    goto :goto_4b

    .line 281
    .restart local v3       #s:Ljava/io/InputStream;
    :catchall_c4
    move-exception v5

    goto :goto_aa

    .line 278
    :catch_c6
    move-exception v2

    goto :goto_7e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cooliris/media/Photographs;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    const-string v1, "Wallpaper"

    const-string v2, "Broadcast MEDIA_THUMBWORKER_SUSPEND"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v1, Lcom/cooliris/app/App;

    invoke-direct {v1, p0}, Lcom/cooliris/app/App;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cooliris/media/Photographs;->mApp:Lcom/cooliris/app/App;

    .line 165
    if-eqz p1, :cond_32

    .line 166
    const-string v1, "do_launch"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cooliris/media/Photographs;->mDoLaunch:Z

    .line 167
    new-instance v1, Ljava/io/File;

    const-string v2, "temp_file_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cooliris/media/Photographs;->mTempFile:Ljava/io/File;

    .line 169
    :cond_32
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/cooliris/media/Photographs;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->shutdown()V

    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 221
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/cooliris/media/Photographs;->closeProgressDialog()V

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 181
    iget-object v0, p0, Lcom/cooliris/media/Photographs;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->onPause()V

    .line 182
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    iget-object v0, p0, Lcom/cooliris/media/Photographs;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->onResume()V

    .line 188
    iget-boolean v0, p0, Lcom/cooliris/media/Photographs;->mDoLaunch:Z

    if-nez v0, :cond_f

    .line 215
    :goto_e
    return-void

    .line 191
    :cond_f
    invoke-virtual {p0}, Lcom/cooliris/media/Photographs;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/cooliris/media/Photographs;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_49

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    const-class v2, Lcom/cooliris/media/CropImage;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 197
    const-string v1, "set_homescreen"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/cooliris/media/Photographs;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Lcom/cooliris/media/Photographs;->formatIntent(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0, v0, v5}, Lcom/cooliris/media/Photographs;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 202
    :cond_49
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 208
    const-string v0, "set_wallpaper"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const-string v0, "set_homescreen"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    :cond_76
    invoke-virtual {p0, v1}, Lcom/cooliris/media/Photographs;->formatIntent(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0, v1, v4}, Lcom/cooliris/media/Photographs;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 173
    const-string v0, "do_launch"

    iget-boolean v1, p0, Lcom/cooliris/media/Photographs;->mDoLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    const-string v0, "temp_file_path"

    iget-object v1, p0, Lcom/cooliris/media/Photographs;->mTempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

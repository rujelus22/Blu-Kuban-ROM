.class Lcom/sec/android/app/ve/thread/ThemeCacheUtils$1;
.super Ljava/lang/Object;
.source "ThemeCacheUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->loadRawThemeFileLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 273
    const/4 v4, 0x0

    .line 274
    .local v4, lContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v10

    if-eqz v10, :cond_1c

    .line 275
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    .line 279
    :goto_b
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    .line 280
    .local v9, workingDir:Ljava/io/File;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 282
    .local v5, lRs:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->access$0()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-lt v2, v10, :cond_21

    .line 308
    return-void

    .line 277
    .end local v2           #i:I
    .end local v5           #lRs:Landroid/content/res/Resources;
    .end local v9           #workingDir:Ljava/io/File;
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v4

    goto :goto_b

    .line 283
    .restart local v2       #i:I
    .restart local v5       #lRs:Landroid/content/res/Resources;
    .restart local v9       #workingDir:Ljava/io/File;
    :cond_21
    new-instance v8, Ljava/io/File;

    .line 284
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->access$0()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v2

    .line 283
    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    .local v8, transitionFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_55

    .line 287
    :try_start_32
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->access$1()[I

    move-result-object v10

    aget v10, v10, v2

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 288
    .local v3, inputStream:Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 291
    .local v7, outputStream:Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 293
    .local v0, data:[B
    :goto_45
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, n:I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_58

    .line 297
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 298
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 299
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 282
    .end local v0           #data:[B
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #n:I
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 294
    .restart local v0       #data:[B
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v6       #n:I
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    :cond_58
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_5c} :catch_5d

    goto :goto_45

    .line 301
    .end local v0           #data:[B
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #n:I
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    :catch_5d
    move-exception v1

    .line 302
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_55
.end method

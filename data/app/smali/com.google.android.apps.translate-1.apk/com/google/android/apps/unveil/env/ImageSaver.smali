.class public Lcom/google/android/apps/unveil/env/ImageSaver;
.super Ljava/lang/Object;
.source "ImageSaver.java"


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "Goggles-generated Image"

.field private static final FOLDER_NAME:Ljava/lang/String; = "Goggles"

.field private static final JPEG_EXTENSION:Ljava/lang/String; = ".jpg"

.field public static final MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final SLASH:Ljava/lang/String; = "/"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private gogglesDirectoryExists:Z

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "contentResolver"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/ImageSaver;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 52
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/ImageSaver;->contentResolver:Landroid/content/ContentResolver;

    .line 53
    return-void
.end method

.method private declared-synchronized createDirectoryIfNotPresent()V
    .registers 5

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/env/ImageSaver;->gogglesDirectoryExists:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    if-eqz v2, :cond_7

    .line 133
    :goto_5
    monitor-exit p0

    return-void

    .line 126
    :cond_7
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Goggles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_36

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 132
    :cond_36
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/unveil/env/ImageSaver;->gogglesDirectoryExists:Z
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_3a

    goto :goto_5

    .line 123
    .end local v0           #directory:Ljava/io/File;
    .end local v1           #directoryPath:Ljava/lang/String;
    :catchall_3a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private generateFilename()Ljava/lang/String;
    .registers 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, completePath:Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "Goggles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "IMG_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static saveImageToMediaStore(Landroid/content/ContentResolver;[B)Landroid/net/Uri;
    .registers 6
    .parameter "contentResolver"
    .parameter "image"

    .prologue
    .line 140
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, ""

    const-string v3, "Goggles-generated Image"

    invoke-static {p0, v1, v2, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, location:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 145
    const/4 v1, 0x0

    .line 147
    :goto_11
    return-object v1

    :cond_12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_11
.end method

.method private saveToSdCard([B)Ljava/io/File;
    .registers 10
    .parameter "imageData"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/ImageSaver;->createDirectoryIfNotPresent()V

    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/ImageSaver;->generateFilename()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, pictureFile:Ljava/io/File;
    :try_start_e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v1, out:Ljava/io/OutputStream;
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_26

    .line 107
    .end local v1           #out:Ljava/io/OutputStream;
    .end local v3           #pictureFile:Ljava/io/File;
    :goto_19
    return-object v3

    .line 100
    .restart local v3       #pictureFile:Ljava/io/File;
    :catch_1a
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/FileNotFoundException;
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ImageSaver;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Could not save image to SD card; the SD card is probably mounted."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v4

    .line 102
    goto :goto_19

    .line 103
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_26
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ImageSaver;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Could not save image to SD card; reason unknown."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v4

    .line 105
    goto :goto_19
.end method


# virtual methods
.method public saveToGallery([B)Landroid/net/Uri;
    .registers 12
    .parameter "imageData"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/env/ImageSaver;->saveToSdCard([B)Ljava/io/File;

    move-result-object v2

    .line 60
    .local v2, outputFile:Ljava/io/File;
    if-nez v2, :cond_8

    .line 61
    const/4 v5, 0x0

    .line 84
    :goto_7
    return-object v5

    .line 64
    :cond_8
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v4, values:Landroid/content/ContentValues;
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 67
    .local v3, tableUri:Landroid/net/Uri;
    const-string v5, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    const-string v5, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, canonicalPath:Ljava/lang/String;
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_6a

    move-result-object v0

    .line 77
    :goto_31
    const-string v5, "title"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v5, "_display_name"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v5, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v5, "_data"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v5, "_size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    const-string v5, "description"

    const-string v6, "Goggles-generated Image"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ImageSaver;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_7

    .line 73
    :catch_6a
    move-exception v1

    .line 74
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31
.end method

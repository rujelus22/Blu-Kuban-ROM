.class public Lcom/estrongs/android/pop/app/imageviewer/ImageManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->c:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->d:Landroid/net/Uri;

    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->e:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .registers 16

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_19
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_27
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_b4
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_31} :catch_bf
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_31} :catch_a9

    if-eqz p7, :cond_94

    :try_start_33
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {p7, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, p9, v3
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_bb
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3e} :catch_9f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3e} :catch_bd

    :goto_3e
    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Ljava/io/Closeable;)V

    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "orientation"

    aget v3, p9, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_8d

    const-string v1, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_8d
    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->c:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    :goto_93
    return-object v0

    :cond_94
    :try_start_94
    invoke-virtual {v2, p8}, Ljava/io/OutputStream;->write([B)V

    const/4 v3, 0x0

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->c(Ljava/lang/String;)I

    move-result v4

    aput v4, p9, v3
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_bb
    .catch Ljava/io/FileNotFoundException; {:try_start_94 .. :try_end_9e} :catch_9f
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9e} :catch_bd

    goto :goto_3e

    :catch_9f
    move-exception v1

    :goto_a0
    :try_start_a0
    const-string v3, "ImageManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_bb

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Ljava/io/Closeable;)V

    goto :goto_93

    :catch_a9
    move-exception v1

    move-object v2, v0

    :goto_ab
    :try_start_ab
    const-string v3, "ImageManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_bb

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Ljava/io/Closeable;)V

    goto :goto_93

    :catchall_b4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_b7
    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_bb
    move-exception v0

    goto :goto_b7

    :catch_bd
    move-exception v1

    goto :goto_ab

    :catch_bf
    move-exception v1

    move-object v2, v0

    goto :goto_a0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;
    .registers 5

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_16
    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    :goto_1b
    return-object v0

    :cond_1c
    const-string v0, ""

    goto :goto_6

    :cond_1f
    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/i;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/i;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1b

    :cond_2b
    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/s;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/s;-><init>()V

    goto :goto_1b
.end method

.method public static a(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;I)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;-><init>(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;I)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;-><init>(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Z)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z
    .registers 2

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Z)Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz p0, :cond_13

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->b()Z

    move-result v0

    :cond_13
    :goto_13
    return v0

    :cond_14
    if-nez p0, :cond_1e

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_1e
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static b()Z
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_2d
    :goto_2d
    return v0

    :cond_2e
    new-instance v2, Ljava/io/File;

    const-string v3, ".probe"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3e
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_47} :catch_49

    const/4 v0, 0x1

    goto :goto_2d

    :catch_49
    move-exception v1

    goto :goto_2d
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method static d(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

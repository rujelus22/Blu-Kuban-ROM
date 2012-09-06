.class public Lcom/estrongs/android/pop/app/imageviewer/gallery/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/gallery/e;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

.field private c:Lcom/estrongs/android/pop/d/f;

.field private d:Lcom/estrongs/android/pop/d/e;

.field private e:Landroid/graphics/BitmapFactory$Options;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Lcom/estrongs/android/pop/d/f;Ljava/lang/String;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->f:I

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c:Lcom/estrongs/android/pop/d/f;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;I)I
    .registers 7

    const/4 v0, 0x1

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v1, v2, p1

    div-int v4, v3, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gt v1, v0, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    if-le v1, v0, :cond_19

    if-le v2, p1, :cond_19

    div-int/2addr v2, v1

    if-ge v2, p1, :cond_19

    add-int/lit8 v1, v1, -0x1

    :cond_19
    if-le v1, v0, :cond_23

    if-le v3, p1, :cond_23

    div-int v2, v3, v1

    if-ge v2, p1, :cond_23

    add-int/lit8 v1, v1, -0x1

    :cond_23
    if-le v1, v0, :cond_f

    move v0, v1

    goto :goto_f
.end method

.method private a(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    .registers 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private o()Landroid/os/ParcelFileDescriptor;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->p()Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_1d

    :catch_35
    move-exception v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private p()Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.estrongs/tmp/remoteimg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_59

    const/4 v1, 0x0

    :try_start_47
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c:Lcom/estrongs/android/pop/d/f;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_62
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_56} :catch_5a

    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    :cond_59
    :goto_59
    return-object v2

    :catch_5a
    move-exception v0

    :try_start_5b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_62

    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    goto :goto_59

    :catchall_62
    move-exception v0

    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->f:I

    return v0
.end method

.method public a(II)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(IIZ)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(IIZZ)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->o()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_9
    invoke-static {p1, p2, v0, p4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v4

    :cond_d
    :goto_d
    return-object v4

    :catch_e
    move-exception v0

    const-string v1, "ESFileImage"

    const-string v2, "got exception decoding bitmap "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c:Lcom/estrongs/android/pop/d/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->e:Landroid/graphics/BitmapFactory$Options;

    if-nez v1, :cond_3e

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->e:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c:Lcom/estrongs/android/pop/d/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_3e
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_85

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_85

    move v1, v2

    :goto_53
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v5

    if-eqz v1, :cond_87

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    :goto_64
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->e:Landroid/graphics/BitmapFactory$Options;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->e:Landroid/graphics/BitmapFactory$Options;

    const/16 v6, 0x320

    invoke-static {v5, v6}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v5

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->e:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->e:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v1, 0x0

    :try_start_79
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->e:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_97
    .catch Ljava/lang/OutOfMemoryError; {:try_start_79 .. :try_end_7e} :catch_91

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    :goto_83
    move-object v4, v0

    goto :goto_d

    :cond_85
    move v1, v3

    goto :goto_53

    :cond_87
    if-eqz v5, :cond_64

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_64

    :catch_91
    move-exception v1

    invoke-static {v0}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    move-object v0, v4

    goto :goto_83

    :catchall_97
    move-exception v1

    invoke-static {v0}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public a(Z)Landroid/graphics/Bitmap;
    .registers 4

    const/16 v0, 0x140

    const v1, 0x17700

    invoke-virtual {p0, v0, v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c:Lcom/estrongs/android/pop/d/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/graphics/BitmapFactory$Options;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->e:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c:Lcom/estrongs/android/pop/d/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_18

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :goto_17
    return-object v0

    :cond_18
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->e:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Ljava/io/Closeable;)V

    :cond_21
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->e:Landroid/graphics/BitmapFactory$Options;

    goto :goto_17
.end method

.method public i()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->h()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public j()I
    .registers 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->h()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public k()I
    .registers 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->h()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public l()J
    .registers 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->n()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->d:Lcom/estrongs/android/pop/d/e;

    iget-wide v0, v0, Lcom/estrongs/android/pop/d/e;->e:J

    return-wide v0
.end method

.method public m()J
    .registers 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->n()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->d:Lcom/estrongs/android/pop/d/e;

    iget-wide v0, v0, Lcom/estrongs/android/pop/d/e;->j:J

    return-wide v0
.end method

.method public n()V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->d:Lcom/estrongs/android/pop/d/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->d:Lcom/estrongs/android/pop/d/e;

    iget-wide v0, v0, Lcom/estrongs/android/pop/d/e;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c:Lcom/estrongs/android/pop/d/f;

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/d/f;->c(JLjava/lang/String;Z)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->d:Lcom/estrongs/android/pop/d/e;

    :cond_1f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->d:Lcom/estrongs/android/pop/d/e;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/estrongs/android/pop/d/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->d:Lcom/estrongs/android/pop/d/e;

    :cond_2b
    return-void
.end method

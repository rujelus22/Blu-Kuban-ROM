.class public Lcom/estrongs/android/pop/e/a;
.super Ljava/lang/Object;


# static fields
.field private static g:I

.field private static h:Lcom/estrongs/android/pop/e/a;


# instance fields
.field private a:Lcom/estrongs/android/pop/d/f;

.field private b:Landroid/content/ContextWrapper;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/estrongs/android/pop/e/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3c

    sput v0, Lcom/estrongs/android/pop/e/a;->g:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/ContextWrapper;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/e/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/e/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/pop/e/a;->b:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Lcom/estrongs/android/pop/e/a;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/e/a;->d()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/e/a;->e:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/e/a;->a:Lcom/estrongs/android/pop/d/f;

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_30

    const/16 v0, 0x18

    sput v0, Lcom/estrongs/android/pop/e/a;->g:I

    :cond_30
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

.method private a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;ILjava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0, p1, p4}, Lcom/estrongs/android/pop/e/a;->c(Ljava/lang/String;Ljava/io/InputStream;)Landroid/os/MemoryFile;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_b
    if-nez v0, :cond_14

    move-object v0, v2

    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/e/a;->g(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_b

    :cond_14
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_20

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    :cond_20
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_71

    :try_start_2c
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_65

    :goto_2f
    invoke-static {p2, p3}, Lcom/estrongs/android/pop/e/a;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v1

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_41

    :try_start_3e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_87

    :cond_41
    :goto_41
    if-eqz v3, :cond_46

    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    :cond_46
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_52
    invoke-static {v2, p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    :goto_55
    if-nez v1, :cond_89

    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->b:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020059

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_e

    :catch_65
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_69
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_83

    :goto_6c
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/e/a;->g(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2f

    :cond_71
    :try_start_71
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_85

    :goto_74
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/e/a;->g(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2f

    :cond_79
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {v2, p1}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_55

    :catch_83
    move-exception v0

    goto :goto_6c

    :catch_85
    move-exception v0

    goto :goto_74

    :catch_87
    move-exception v0

    goto :goto_41

    :cond_89
    move-object v0, v1

    goto :goto_e
.end method

.method public static a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;
    .registers 2

    sget-object v0, Lcom/estrongs/android/pop/e/a;->h:Lcom/estrongs/android/pop/e/a;

    if-nez v0, :cond_f

    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/estrongs/android/pop/e/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/e/a;-><init>(Landroid/content/ContextWrapper;)V

    sput-object v0, Lcom/estrongs/android/pop/e/a;->h:Lcom/estrongs/android/pop/e/a;

    :cond_f
    sget-object v0, Lcom/estrongs/android/pop/e/a;->h:Lcom/estrongs/android/pop/e/a;

    goto :goto_7
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .registers 11

    const/high16 v5, 0x4240

    const/4 v2, 0x1

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_43

    int-to-float v0, v3

    div-float v0, v5, v0

    move v7, v0

    :goto_24
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    :try_start_30
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_40} :catch_41
    .catch Ljava/lang/OutOfMemoryError; {:try_start_30 .. :try_end_40} :catch_48

    goto :goto_5

    :catch_41
    move-exception v0

    goto :goto_5

    :cond_43
    int-to-float v0, v4

    div-float v0, v5, v0

    move v7, v0

    goto :goto_24

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, "EEE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .registers 7

    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    sget v2, Lcom/estrongs/android/pop/e/a;->g:I

    if-le v0, v2, :cond_10

    invoke-direct {p0}, Lcom/estrongs/android/pop/e/a;->e()V

    :cond_10
    new-instance v2, Lcom/estrongs/android/pop/e/b;

    invoke-direct {v2}, Lcom/estrongs/android/pop/e/b;-><init>()V

    iput-object p2, v2, Lcom/estrongs/android/pop/e/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_28

    const/4 v0, 0x1

    :goto_1a
    iput v0, v2, Lcom/estrongs/android/pop/e/b;->b:I

    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_1a

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private c(Ljava/lang/String;Ljava/io/InputStream;)Landroid/os/MemoryFile;
    .registers 11

    const/4 v1, 0x0

    const/16 v2, 0x2000

    const/4 v3, 0x0

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->a:Lcom/estrongs/android/pop/d/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    :cond_c
    instance-of v0, p2, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p2, v0

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->a:Lcom/estrongs/android/pop/d/f;

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v4, v5, p1, v2}, Lcom/estrongs/android/pop/d/f;->c(JLjava/lang/String;Z)Lcom/estrongs/android/pop/d/e;

    move-result-object v2

    if-nez v2, :cond_30

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_27} :catch_27

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_2b
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_58

    move-object v0, v1

    :goto_2f
    return-object v0

    :cond_30
    :try_start_30
    iget-wide v4, v2, Lcom/estrongs/android/pop/d/e;->e:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5b

    new-instance v0, Landroid/os/MemoryFile;

    iget-wide v4, v2, Lcom/estrongs/android/pop/d/e;->e:J

    long-to-int v2, v4

    invoke-direct {v0, p1, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2000

    new-array v4, v2, [B

    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_48
    if-gtz v2, :cond_4e

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_2f

    :cond_4e
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    add-int/2addr v3, v2

    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_56} :catch_27

    move-result v2

    goto :goto_48

    :catch_58
    move-exception v0

    move-object v0, v1

    goto :goto_2f

    :cond_5b
    move-object v0, v1

    goto :goto_2f
.end method

.method private c()V
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->b:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".thumbnails"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/e/a;->c:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->b:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/e/a;->d:Ljava/lang/String;

    return-void
.end method

.method private e()V
    .registers 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    move v2, v0

    :goto_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_37

    invoke-interface {v3}, Ljava/util/List;->clear()V

    return-void

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/e/b;

    iget v1, v1, Lcom/estrongs/android/pop/e/b;->b:I

    if-gtz v1, :cond_f

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_37
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/e/b;

    :try_start_45
    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->e:Ljava/util/Hashtable;

    iget-object v4, v0, Lcom/estrongs/android/pop/e/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/estrongs/android/pop/e/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/e/b;->a:Landroid/graphics/drawable/Drawable;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5a} :catch_5e

    :goto_5a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17

    :catch_5e
    move-exception v0

    goto :goto_5a
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->a:Lcom/estrongs/android/pop/d/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/e/a;->a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p3, :cond_7

    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_7
    :try_start_7
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;ILjava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .registers 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_d
    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    sget v3, Lcom/estrongs/android/pop/e/a;->g:I

    if-le v0, v3, :cond_1a

    invoke-direct {p0}, Lcom/estrongs/android/pop/e/a;->e()V

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/e/b;

    if-eqz v0, :cond_2e

    iget v1, v0, Lcom/estrongs/android/pop/e/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/estrongs/android/pop/e/b;->b:I

    iget-object v0, v0, Lcom/estrongs/android/pop/e/b;->a:Landroid/graphics/drawable/Drawable;

    monitor-exit v2

    :goto_2d
    return-object v0

    :cond_2e
    monitor-exit v2

    :cond_2f
    if-nez p2, :cond_36

    move-object v0, v1

    goto :goto_2d

    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    :try_start_36
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/e/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_45} :catch_4b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_45} :catch_4e

    move-result-object v0

    move-object v2, v0

    :goto_47
    if-nez v2, :cond_54

    move-object v0, v1

    goto :goto_2d

    :catch_4b
    move-exception v0

    move-object v2, v1

    goto :goto_47

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v2, v1

    goto :goto_47

    :cond_54
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0, v4}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_2d
.end method

.method public a()V
    .registers 5

    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1c
    monitor-exit v1

    return-void

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_11

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_11

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/e/b;

    if-eqz v0, :cond_1a

    iget v2, v0, Lcom/estrongs/android/pop/e/b;->b:I

    if-lez v2, :cond_1a

    iget v2, v0, Lcom/estrongs/android/pop/e/b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/estrongs/android/pop/e/b;->b:I

    :cond_1a
    monitor-exit v1

    goto :goto_2

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/e/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/estrongs/android/pop/e/a;->d()V

    :cond_21
    :try_start_21
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_33} :catch_34
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_33} :catch_36

    goto :goto_4

    :catch_34
    move-exception v0

    goto :goto_4

    :catch_36
    move-exception v0

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/e/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/estrongs/android/pop/e/a;->c()V

    :cond_1c
    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/e/a;->b(Ljava/lang/String;Ljava/io/InputStream;)V

    :cond_1f
    return-void
.end method

.method public b()V
    .registers 5

    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    monitor-exit v1

    return-void

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/e/b;

    const/4 v3, 0x0

    iput v3, v0, Lcom/estrongs/android/pop/e/b;->b:I

    goto :goto_d

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/e/a;->b(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/e/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x40

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/estrongs/android/pop/e/a;->a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/e/a;->a(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1f} :catch_22
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_1f
.end method

.method public c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v2, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_c
    iget-object v0, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/e/b;

    iget-object v3, p0, Lcom/estrongs/android/pop/e/a;->f:Ljava/util/Hashtable;

    if-eqz v3, :cond_22

    iget v1, v0, Lcom/estrongs/android/pop/e/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/estrongs/android/pop/e/b;->b:I

    iget-object v0, v0, Lcom/estrongs/android/pop/e/b;->a:Landroid/graphics/drawable/Drawable;

    monitor-exit v2

    :goto_21
    return-object v0

    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2f

    :cond_23
    :try_start_23
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/e/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_2a} :catch_32

    move-result-object v2

    if-nez v2, :cond_38

    move-object v0, v1

    goto :goto_21

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v1

    goto :goto_21

    :cond_38
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_21
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/e/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/estrongs/android/pop/app/imageviewer/CropImage;
.super Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

.field d:Ljava/lang/Runnable;

.field private e:Landroid/graphics/Bitmap$CompressFormat;

.field private f:Landroid/net/Uri;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private final l:Landroid/os/Handler;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

.field private r:Landroid/content/ContentResolver;

.field private s:Landroid/graphics/Bitmap;

.field private t:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

.field private u:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->f:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->j:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->l:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->p:Z

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/b;-><init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->q:Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    return-object v0
.end method

.method private a()V
    .registers 5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->q:Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/f;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/imageviewer/f;-><init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->l:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_6
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v5, -0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->f:Landroid/net/Uri;

    if-eqz v2, :cond_60

    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->r:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->f:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_40

    :cond_18
    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Ljava/io/Closeable;)V

    :goto_1b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->f:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->setResult(ILandroid/content/Intent;)V

    :goto_32
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->l:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/i;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/i;-><init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->finish()V

    return-void

    :catch_40
    move-exception v0

    :try_start_41
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot open file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->f:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_5b

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Ljava/io/Closeable;)V

    goto :goto_1b

    :catchall_5b
    move-exception v0

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_60
    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g:Z

    if-eqz v1, :cond_78

    :try_start_64
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->setWallpaper(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->setResult(I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_6c

    goto :goto_32

    :catch_6c
    move-exception v1

    const-string v2, "CropImage"

    const-string v3, "Failed to set wallpaper."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->setResult(I)V

    goto :goto_32

    :cond_78
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v1, "rect"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->u:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_ae
    add-int/lit8 v6, v0, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_140

    const/4 v0, 0x1

    :try_start_e7
    new-array v9, v0, [I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->r:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->u:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->u:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->m()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_134} :catch_136

    goto/16 :goto_32

    :catch_136
    move-exception v0

    const-string v1, "CropImage"

    const-string v2, "store image fail, continue anyway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    :cond_140
    move v0, v6

    goto/16 :goto_ae
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private b()V
    .registers 13

    const/4 v11, -0x1

    const/high16 v8, 0x4000

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->b:Z

    if-nez v0, :cond_a

    iput-boolean v5, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->b:Z

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->m:I

    if-eqz v0, :cond_ca

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->n:I

    if-eqz v0, :cond_ca

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->o:Z

    if-nez v0, :cond_ca

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->m:I

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->n:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->m:I

    iget v6, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->n:I

    invoke-direct {v3, v9, v9, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    neg-int v4, v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    neg-int v6, v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Rect;->inset(II)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v2, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->q:Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->q:Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    invoke-virtual {v0, v1, v5}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->q:Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    invoke-virtual {v0, v5, v5}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(ZZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->q:Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "customSave"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_137

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-nez v3, :cond_a9

    const-string v3, "return-data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137

    :cond_a9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "inline-data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->finish()V

    goto/16 :goto_a

    :cond_ca
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7, v0, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->q:Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->k:Z

    if-eqz v0, :cond_11a

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    int-to-float v6, v2

    div-float/2addr v6, v8

    int-to-float v3, v3

    div-float/2addr v3, v8

    int-to-float v2, v2

    div-float/2addr v2, v8

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v3, v2, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :try_start_110
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_115
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_110 .. :try_end_115} :catch_175

    :goto_115
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_11a
    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->m:I

    if-eqz v0, :cond_78

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->n:I

    if-eqz v0, :cond_78

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->o:Z

    if-eqz v0, :cond_78

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->m:I

    iget v3, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->n:I

    iget-boolean v4, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->p:Z

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_78

    :cond_137
    if-eqz v2, :cond_157

    :try_start_139
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_14a} :catch_14f

    :goto_14a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->finish()V

    goto/16 :goto_a

    :catch_14f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, v9, v10}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->setResult(ILandroid/content/Intent;)V

    goto :goto_14a

    :cond_157
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g:Z

    if-eqz v0, :cond_172

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0901be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_166
    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/h;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/h;-><init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->l:Landroid/os/Handler;

    invoke-static {p0, v10, v0, v2, v1}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_a

    :cond_172
    const-string v0, "Saving picture\u2026"

    goto :goto_166

    :catch_175
    move-exception v2

    goto :goto_115
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->h:I

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->i:I

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->j:Z

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->b()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->u:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->r:Landroid/content/ContentResolver;

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->requestWindowFeature(I)Z

    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->setContentView(I)V

    const v0, 0x7f07011d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->q:Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    invoke-static {p0}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_c6

    const-string v0, "circleCrop"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    iput-boolean v6, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->k:Z

    iput v6, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->h:I

    iput v6, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->i:I

    :cond_3b
    const-string v0, "setWallpaper"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g:Z

    const-string v4, "set_wallpaper"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g:Z

    const-string v4, "show_drm_settable"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g:Z

    if-nez v0, :cond_79

    const-string v0, "output"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->f:Landroid/net/Uri;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->f:Landroid/net/Uri;

    if-eqz v0, :cond_79

    const-string v0, "outputFormat"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    :cond_79
    const-string v0, "data"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    const-string v0, "aspectX"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->h:I

    const-string v0, "aspectY"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->i:I

    const-string v0, "outputX"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->m:I

    const-string v0, "outputY"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->n:I

    const-string v0, "scale"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->o:Z

    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->p:Z

    const-string v0, "noFaceDetection"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    const-string v0, "noFaceDetection"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fe

    move v0, v1

    :goto_c4
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->j:Z

    :cond_c6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_f6

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v2

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Lcom/estrongs/android/pop/d/f;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->u:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    :goto_ea
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->u:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->u:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v0, v6}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    :cond_f6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_113

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->finish()V

    :goto_fd
    return-void

    :cond_fe
    move v0, v6

    goto :goto_c4

    :cond_100
    move v0, v6

    goto :goto_c4

    :cond_102
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->r:Landroid/content/ContentResolver;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->t:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->t:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->u:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    goto :goto_ea

    :cond_113
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f07011e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/d;-><init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700c1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/e;-><init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v7, [I

    fill-array-data v0, :array_14c

    new-array v1, v7, [I

    fill-array-data v1, :array_154

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a([I[I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a()V

    goto :goto_fd

    nop

    :array_14c
    .array-data 0x4
        0xc1t 0x0t 0x7t 0x7ft
        0x1et 0x1t 0x7t 0x7ft
    .end array-data

    :array_154
    .array-data 0x4
        0x7ct 0x0t 0x9t 0x7ft
        0x7dt 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->t:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->t:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a()V

    :cond_9
    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;->onPause()V

    return-void
.end method

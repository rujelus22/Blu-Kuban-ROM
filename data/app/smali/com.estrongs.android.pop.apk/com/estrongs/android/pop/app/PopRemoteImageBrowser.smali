.class public Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Lcom/estrongs/android/pop/d/f;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/widget/ImageView;

.field private g:I

.field private h:I

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/util/DisplayMetrics;

.field private l:F

.field private m:Landroid/view/View$OnClickListener;

.field private final n:Landroid/os/Handler;

.field private o:Landroid/graphics/drawable/BitmapDrawable;

.field private p:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a:Lcom/estrongs/android/pop/d/f;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->e:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->k:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/estrongs/android/pop/app/dd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/dd;-><init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->n:Landroid/os/Handler;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->o:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

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

.method private a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a:Lcom/estrongs/android/pop/d/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->e:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->o:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/app/dh;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/de;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/de;-><init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->e:I

    return v0
.end method

.method private c()V
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/app/dh;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/df;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/df;-><init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private d()V
    .registers 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->o:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->n:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/dg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dg;-><init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Lcom/estrongs/android/pop/d/f;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a:Lcom/estrongs/android/pop/d/f;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->g:I

    return v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h:I

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->o:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 10

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->e:I

    const/4 v0, -0x1

    if-ne v3, v0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_15

    move-object v0, v1

    goto :goto_8

    :cond_15
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v6

    if-eqz v4, :cond_6b

    if-nez v5, :cond_6b

    if-nez v6, :cond_6b

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->mark(I)V

    :goto_3d
    if-eqz v5, :cond_71

    iget-object v7, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v1, v7}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :goto_46
    iget v7, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h:I

    invoke-static {v2, v7}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v7

    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v4, :cond_7b

    if-nez v5, :cond_7b

    if-nez v6, :cond_7b

    :try_start_54
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_8e

    :goto_57
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_5d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_90

    :goto_60
    if-eqz v5, :cond_84

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    :goto_69
    move-object v0, v2

    goto :goto_8

    :cond_6b
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_3d

    :catch_6f
    move-exception v7

    goto :goto_3d

    :cond_71
    if-eqz v6, :cond_46

    iget-object v7, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v1, v7}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_46

    :cond_7b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_57

    :cond_84
    if-eqz v6, :cond_69

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_69

    :catch_8e
    move-exception v4

    goto :goto_57

    :catch_90
    move-exception v0

    goto :goto_60
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->g:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h:I

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_17

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0

    :catch_17
    move-exception v0

    goto :goto_15
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const v7, 0x7f09018c

    const/16 v6, 0x8

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a:Lcom/estrongs/android/pop/d/f;

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->k:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->k:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->l:F

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->setContentView(I)V

    const v0, 0x7f07011b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_7c

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_82

    const-string v2, "ABSOLUTE_FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    if-eqz v1, :cond_82

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    :goto_68
    if-nez v1, :cond_84

    const v0, 0x7f09018d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->finish()V

    :goto_7b
    return-void

    :cond_7c
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    :cond_82
    move-object v1, v0

    goto :goto_68

    :cond_84
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/sdcard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d7

    :cond_b8
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v2

    if-ge v2, v6, :cond_d1

    const-class v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_c7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->finish()V

    goto :goto_7b

    :cond_d1
    const-class v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_c7

    :cond_d7
    const v0, 0x7f07013b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i:Landroid/widget/ImageView;

    const v0, 0x7f07013c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->j:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->g:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1df

    :try_start_141
    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v2, "Haier"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_185

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_159

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_159
    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v1, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_16b
    if-eqz v0, :cond_194

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_179
    .catch Ljava/lang/Throwable; {:try_start_141 .. :try_end_179} :catch_1b1

    :cond_179
    :goto_179
    const v0, 0x7f0701d0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7b

    :cond_185
    const/16 v0, 0x140

    const v2, 0x17700

    :try_start_18a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v1, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_16b

    :cond_194
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_179

    const v0, 0x7f09018c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1b0
    .catch Ljava/lang/Throwable; {:try_start_18a .. :try_end_1b0} :catch_1b1

    goto :goto_179

    :catch_1b1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_179

    :cond_1df
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->b()V

    goto/16 :goto_7b
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    const v0, 0x7f09018e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

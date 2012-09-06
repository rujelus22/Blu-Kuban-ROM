.class Lcom/google/googlenav/wallpaper/b;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/googlenav/wallpaper/i;


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/MapWallpaper;

.field private b:Lcom/google/googlenav/wallpaper/MapWallpaper;

.field private c:Landroid/view/SurfaceHolder;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/google/googlenav/wallpaper/g;

.field private h:LaU/d;

.field private i:Z

.field private j:Lcom/google/googlenav/wallpaper/c;

.field private k:Lcom/google/googlenav/wallpaper/e;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Lcom/google/googlenav/wallpaper/h;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/wallpaper/MapWallpaper;Lcom/google/googlenav/wallpaper/MapWallpaper;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 695
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 234
    const-string v0, "hybrid"

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->f:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/google/googlenav/wallpaper/b;->l:Landroid/graphics/drawable/Drawable;

    .line 252
    iput-object v1, p0, Lcom/google/googlenav/wallpaper/b;->m:Lcom/google/googlenav/wallpaper/h;

    .line 696
    iput-object p2, p0, Lcom/google/googlenav/wallpaper/b;->b:Lcom/google/googlenav/wallpaper/MapWallpaper;

    .line 697
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/wallpaper/b;)Ljava/io/File;
    .registers 2
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->f()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/h;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/google/googlenav/wallpaper/b;->b(Lcom/google/googlenav/wallpaper/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 707
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_22

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    :cond_22
    return-object v0
.end method

.method private a(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->g:Lcom/google/googlenav/wallpaper/g;

    if-eqz v0, :cond_1e

    .line 486
    new-instance v0, Lcom/google/googlenav/wallpaper/h;

    new-instance v2, Lcom/google/googlenav/wallpaper/d;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/googlenav/wallpaper/d;-><init>(Lcom/google/googlenav/wallpaper/b;II)V

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->c()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/wallpaper/b;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->g:Lcom/google/googlenav/wallpaper/g;

    invoke-virtual {v1}, Lcom/google/googlenav/wallpaper/g;->a()Lcom/google/googlenav/wallpaper/f;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/wallpaper/h;-><init>(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/d;ILjava/lang/String;Lcom/google/googlenav/wallpaper/f;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/b;->a(Lcom/google/googlenav/wallpaper/h;)V

    .line 489
    :cond_1e
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .registers 4
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->h:LaU/d;

    if-eqz v0, :cond_16

    .line 407
    const-string v0, "weather_type"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_16

    .line 410
    :try_start_d
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->h:LaU/d;

    invoke-static {v0}, LaU/c;->valueOf(Ljava/lang/String;)LaU/c;

    move-result-object v0

    invoke-virtual {v1, v0}, LaU/d;->a(LaU/c;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_17

    .line 423
    :cond_16
    :goto_16
    return-void

    .line 411
    :catch_17
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 495
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 496
    const/high16 v0, 0x6400

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 498
    int-to-float v3, p2

    int-to-float v4, p3

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 499
    return-void
.end method

.method private a(Lcom/google/googlenav/wallpaper/h;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 505
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->c:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_59

    .line 509
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lcom/google/googlenav/wallpaper/h;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/wallpaper/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5a

    .line 510
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->l:Landroid/graphics/drawable/Drawable;

    .line 516
    :goto_13
    if-eqz v0, :cond_67

    .line 517
    iget v1, p0, Lcom/google/googlenav/wallpaper/b;->d:I

    .line 518
    iget-object v2, p1, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    iget v2, v2, Lcom/google/googlenav/wallpaper/d;->a:I

    add-int/2addr v2, v1

    .line 520
    iget-object v3, p1, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    iget v3, v3, Lcom/google/googlenav/wallpaper/d;->b:I

    .line 521
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 523
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 524
    if-eqz v1, :cond_59

    .line 525
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 526
    iget-boolean v0, p0, Lcom/google/googlenav/wallpaper/b;->i:Z

    if-eqz v0, :cond_49

    .line 527
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->h:LaU/d;

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/b;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p1, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    iget v3, v3, Lcom/google/googlenav/wallpaper/d;->a:I

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->isPreview()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, LaU/d;->a(Landroid/graphics/Canvas;IIZ)V

    .line 530
    :cond_49
    iget-object v0, p1, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    iget v0, v0, Lcom/google/googlenav/wallpaper/d;->a:I

    iget-object v2, p1, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    iget v2, v2, Lcom/google/googlenav/wallpaper/d;->b:I

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/wallpaper/b;->a(Landroid/graphics/Canvas;II)V

    .line 531
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 548
    :cond_59
    :goto_59
    return-void

    .line 512
    :cond_5a
    invoke-virtual {p1}, Lcom/google/googlenav/wallpaper/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 513
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/b;->m:Lcom/google/googlenav/wallpaper/h;

    .line 514
    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_13

    .line 542
    :cond_67
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->k:Lcom/google/googlenav/wallpaper/e;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->k:Lcom/google/googlenav/wallpaper/e;

    invoke-virtual {v0}, Lcom/google/googlenav/wallpaper/e;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_59

    .line 543
    :cond_75
    new-instance v0, Lcom/google/googlenav/wallpaper/e;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/wallpaper/e;-><init>(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/b;)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->k:Lcom/google/googlenav/wallpaper/e;

    .line 544
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->k:Lcom/google/googlenav/wallpaper/e;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/wallpaper/h;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/wallpaper/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_59
.end method

.method private b(Lcom/google/googlenav/wallpaper/h;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 732
    const-string v1, "http://maps.googleapis.com/maps/api/staticmap?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const-string v1, "&sensor=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const-string v1, "&scale=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v1, "&language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/wallpaper/b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string v1, "&center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    iget-object v1, p1, Lcom/google/googlenav/wallpaper/h;->d:Lcom/google/googlenav/wallpaper/f;

    iget-wide v1, v1, Lcom/google/googlenav/wallpaper/f;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 746
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v1, p1, Lcom/google/googlenav/wallpaper/h;->d:Lcom/google/googlenav/wallpaper/f;

    iget-wide v1, v1, Lcom/google/googlenav/wallpaper/f;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 753
    iget-object v1, p1, Lcom/google/googlenav/wallpaper/h;->c:Ljava/lang/String;

    const-string v2, "terrain"

    if-ne v1, v2, :cond_78

    iget v1, p1, Lcom/google/googlenav/wallpaper/h;->b:I

    const/16 v2, 0xe

    if-le v1, v2, :cond_78

    .line 754
    const-string v1, "&zoom=14"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :goto_4d
    const-string v1, "&size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    iget-object v1, p1, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    iget v1, v1, Lcom/google/googlenav/wallpaper/d;->c:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget-object v1, p1, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    iget v1, v1, Lcom/google/googlenav/wallpaper/d;->d:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    const-string v1, "&maptype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    iget-object v1, p1, Lcom/google/googlenav/wallpaper/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 756
    :cond_78
    const-string v1, "&zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget v1, p1, Lcom/google/googlenav/wallpaper/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4d
.end method

.method private b()V
    .registers 8

    .prologue
    const/16 v0, 0x12

    const/4 v1, 0x4

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 342
    iget-object v2, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v3, "wallpaper_settings"

    invoke-virtual {v2, v3, v6}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "zoom_level_string"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    if-nez v2, :cond_48

    .line 347
    iget-object v2, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v3, "wallpaper_settings"

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "zoom_level"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 349
    if-eq v2, v5, :cond_48

    .line 352
    add-int/lit8 v2, v2, -0x1

    .line 355
    if-ge v2, v1, :cond_4b

    .line 358
    :goto_2d
    if-le v1, v0, :cond_49

    .line 366
    :goto_2f
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v2, "wallpaper_settings"

    invoke-virtual {v1, v2, v6}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "zoom_level_string"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, LR/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 371
    :cond_48
    return-void

    :cond_49
    move v0, v1

    goto :goto_2f

    :cond_4b
    move v1, v2

    goto :goto_2d
.end method

.method static synthetic b(Lcom/google/googlenav/wallpaper/b;)V
    .registers 1
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->e()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/h;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/google/googlenav/wallpaper/b;->a(Lcom/google/googlenav/wallpaper/h;)V

    return-void
.end method

.method private c()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v0, 0xc

    .line 374
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v2, "wallpaper_settings"

    invoke-virtual {v1, v2, v4}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 375
    const-string v2, "zoom_level_string"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    :try_start_15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result v0

    .line 384
    :goto_19
    return v0

    .line 378
    :catch_1a
    move-exception v1

    .line 381
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v2, "wallpaper_settings"

    invoke-virtual {v1, v2, v4}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "zoom_level_string"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, LR/b;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_19
.end method

.method static synthetic c(Lcom/google/googlenav/wallpaper/b;)Lcom/google/googlenav/wallpaper/c;
    .registers 2
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->j:Lcom/google/googlenav/wallpaper/c;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->b:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->b()V

    .line 396
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 399
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/wallpaper/b;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/b;->a(Landroid/content/SharedPreferences;)V

    .line 403
    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/wallpaper/b;)V
    .registers 1
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->g()V

    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->getDesiredMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->getDesiredMinimumHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/wallpaper/b;->a(II)V

    .line 462
    return-void
.end method

.method private f()Ljava/io/File;
    .registers 4

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->b:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->f()Ljava/io/File;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 477
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 478
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 480
    :cond_14
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->e()V

    .line 458
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 256
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 258
    new-instance v0, Lcom/google/googlenav/wallpaper/c;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/wallpaper/c;-><init>(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/a;)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->j:Lcom/google/googlenav/wallpaper/c;

    .line 261
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->b:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 262
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->b:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 270
    new-instance v0, LaU/d;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->b:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->getDesiredMinimumWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->getDesiredMinimumHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p0}, LaU/d;-><init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/i;)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->h:LaU/d;

    .line 273
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->b:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 275
    new-instance v1, Lcom/google/googlenav/wallpaper/g;

    invoke-direct {v1, p0, v4}, Lcom/google/googlenav/wallpaper/g;-><init>(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/a;)V

    iput-object v1, p0, Lcom/google/googlenav/wallpaper/b;->g:Lcom/google/googlenav/wallpaper/g;

    .line 278
    const-string v1, "network"

    const-wide/32 v2, 0x927c0

    const v4, 0x453b8000

    iget-object v5, p0, Lcom/google/googlenav/wallpaper/b;->g:Lcom/google/googlenav/wallpaper/g;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 285
    const/16 v0, 0x4c

    const-string v1, "a"

    const-string v2, "p"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_53
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->d()V

    .line 290
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/wallpaper/b;->a(II)V

    .line 307
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 294
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 297
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->b:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 299
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->g:Lcom/google/googlenav/wallpaper/g;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 301
    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    .line 302
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iput p5, p0, Lcom/google/googlenav/wallpaper/b;->d:I

    .line 331
    iput p6, p0, Lcom/google/googlenav/wallpaper/b;->e:I

    .line 332
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->h:LaU/d;

    if-eqz v0, :cond_d

    .line 333
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->h:LaU/d;

    invoke-virtual {v0, p1}, LaU/d;->a(F)V

    .line 336
    :cond_d
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->e()V

    .line 337
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 429
    iput-boolean v1, p0, Lcom/google/googlenav/wallpaper/b;->i:Z

    .line 430
    const-string v0, "weather_on"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 431
    const-string v0, "weather_on"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/wallpaper/b;->i:Z

    .line 435
    :cond_13
    const-string v0, "map_mode"

    const-string v1, "map_mode_satellite"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    const-string v1, "hybrid"

    iput-object v1, p0, Lcom/google/googlenav/wallpaper/b;->f:Ljava/lang/String;

    .line 438
    const-string v1, "map_mode_terrain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 439
    const-string v0, "terrain"

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->f:Ljava/lang/String;

    .line 444
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->e()V

    .line 445
    return-void

    .line 440
    :cond_2f
    const-string v1, "map_mode_normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 441
    const-string v0, "roadmap"

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->f:Ljava/lang/String;

    goto :goto_2b
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->e()V

    .line 312
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/b;->c:Landroid/view/SurfaceHolder;

    .line 318
    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->e()V

    .line 319
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter

    .prologue
    .line 324
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->h:LaU/d;

    if-eqz v0, :cond_9

    .line 451
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->h:LaU/d;

    invoke-virtual {v0, p1}, LaU/d;->a(Z)V

    .line 453
    :cond_9
    return-void
.end method

.class Lcom/google/googlenav/wallpaper/b;
.super Landroid/service/wallpaper/WallpaperService$Engine;

# interfaces
.implements LaA/m;
.implements LaJ/w;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/googlenav/wallpaper/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/MapWallpaper;

.field private b:Lai/e;

.field private c:LaJ/p;

.field private d:Lcom/google/googlenav/android/l;

.field private e:Lat/h;

.field private f:Lcom/google/googlenav/ui/at;

.field private g:F

.field private h:F

.field private i:J

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lbg/d;

.field private n:LaA/i;

.field private o:LaJ/B;

.field private p:J


# direct methods
.method constructor <init>(Lcom/google/googlenav/wallpaper/MapWallpaper;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/wallpaper/b;)LaJ/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    return-object v0
.end method

.method private a(II)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->b:Lai/e;

    invoke-virtual {v0}, Lai/e;->g()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->b:Lai/e;

    const/high16 v2, 0x6400

    invoke-virtual {v1, v2}, Lai/e;->b(I)Z

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->b:Lai/e;

    invoke-virtual {v1, v3, v3, p1, p2}, Lai/e;->b(IIII)V

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->b:Lai/e;

    invoke-virtual {v1, v0}, Lai/e;->b(I)Z

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    if-eqz v0, :cond_16

    const-string v0, "weather_type"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_d
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    invoke-static {v0}, Lbg/c;->valueOf(Ljava/lang/String;)Lbg/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbg/d;->a(Lbg/c;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method private a(Lat/h;)V
    .registers 7

    const/4 v4, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lat/h;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lat/h;->g()V

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->f:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->B()LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    instance-of v3, v0, LaG/a;

    if-eqz v3, :cond_2f

    check-cast v0, LaG/a;

    invoke-virtual {v0, v1}, LaG/a;->a(Z)V

    goto :goto_19

    :cond_2f
    instance-of v3, v0, LaE/a;

    if-eqz v3, :cond_19

    check-cast v0, LaE/a;

    invoke-virtual {v0, v1}, LaE/a;->a(Z)V

    goto :goto_19

    :cond_39
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ad()V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v2, "wallpaper_settings"

    const v3, 0x8000

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "zoom_level"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_5c

    const/4 v0, 0x1

    :goto_56
    iget-object v2, p0, Lcom/google/googlenav/wallpaper/b;->f:Lcom/google/googlenav/ui/at;

    invoke-virtual {v2, v0, v0, v1}, Lcom/google/googlenav/ui/at;->a(ZZZ)V

    return-void

    :cond_5c
    move v0, v1

    goto :goto_56
.end method

.method private a(Z)V
    .registers 5

    const/16 v1, 0x4c

    const-string v2, "a"

    if-eqz p1, :cond_20

    const-string v0, "o"

    :goto_8
    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->c()LaJ/Y;

    move-result-object v0

    if-eqz p1, :cond_23

    invoke-virtual {v0}, LaJ/Y;->d()LaJ/Y;

    move-result-object v0

    :goto_17
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    invoke-virtual {v1, v0}, LaJ/p;->a(LaJ/Y;)V

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->a()V

    return-void

    :cond_20
    const-string v0, "i"

    goto :goto_8

    :cond_23
    invoke-virtual {v0}, LaJ/Y;->c()LaJ/Y;

    move-result-object v0

    goto :goto_17
.end method

.method private b(II)V
    .registers 11

    const/4 v7, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->f:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v0

    if-nez v0, :cond_42

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/googlenav/wallpaper/b;->p:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-lez v3, :cond_27

    iput-wide v0, p0, Lcom/google/googlenav/wallpaper/b;->p:J

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->e:Lat/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/b;->a(Lat/h;)V

    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->b:Lai/e;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, LaJ/p;->a(Lah/e;ZZZZ)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->b:Lai/e;

    invoke-static {v0, p1, p2}, Lcom/google/googlenav/ui/C;->a(Lah/e;II)Lcom/google/googlenav/ui/C;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->f:Lcom/google/googlenav/ui/at;

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/C;IZ)V

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->f:Lcom/google/googlenav/ui/at;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/C;)V

    return-void

    :cond_42
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->o:LaJ/B;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->o:LaJ/B;

    invoke-virtual {v1, v0}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_4e
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    invoke-virtual {v1, v0}, LaJ/p;->b(LaJ/B;)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->o:LaJ/B;

    goto :goto_27
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .registers 4

    const/4 v1, -0x1

    const-string v0, "zoom_level"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    invoke-virtual {v1, v0}, LaJ/p;->a(LaJ/Y;)V

    :cond_12
    return-void
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/wallpaper/b;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/b;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private d()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->e()Z

    move-result v1

    if-nez v1, :cond_18

    div-int/lit8 v0, v0, 0x2

    :cond_18
    return v0
.end method

.method private e()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/wallpaper/b;->j:I

    iget v1, p0, Lcom/google/googlenav/wallpaper/b;->k:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private f()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method a()V
    .registers 9

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->d()I

    move-result v4

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->f()I

    move-result v1

    if-eqz v4, :cond_1c

    if-nez v1, :cond_1d

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    sub-int v5, v4, v3

    int-to-float v5, v5

    iget v6, p0, Lcom/google/googlenav/wallpaper/b;->g:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    neg-int v5, v5

    sub-int v6, v1, v0

    int-to-float v6, v6

    iget v7, p0, Lcom/google/googlenav/wallpaper/b;->h:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    neg-int v6, v6

    iget-object v7, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    invoke-virtual {v7}, LaJ/p;->r()I

    move-result v7

    if-ne v4, v7, :cond_3d

    iget-object v7, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    invoke-virtual {v7}, LaJ/p;->q()I

    move-result v7

    if-eq v1, v7, :cond_42

    :cond_3d
    iget-object v7, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    invoke-virtual {v7, v4, v1}, LaJ/p;->d(II)V

    :cond_42
    const/4 v1, 0x0

    :try_start_43
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_96

    if-lez v3, :cond_96

    if-lez v0, :cond_96

    iget-object v7, p0, Lcom/google/googlenav/wallpaper/b;->b:Lai/e;

    invoke-virtual {v7, v1}, Lai/e;->a(Landroid/graphics/Canvas;)V

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, v4, v0}, Lcom/google/googlenav/wallpaper/b;->b(II)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v5, p0, Lcom/google/googlenav/wallpaper/b;->l:Z

    if-eqz v5, :cond_6a

    iget-object v5, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->isPreview()Z

    move-result v6

    invoke-virtual {v5, v1, v3, v4, v6}, Lbg/d;->a(Landroid/graphics/Canvas;IIZ)V

    :cond_6a
    iget-object v4, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v4}, Lcom/google/googlenav/wallpaper/MapWallpaper;->e(Lcom/google/googlenav/wallpaper/MapWallpaper;)Z

    move-result v4

    if-eqz v4, :cond_93

    iget-object v4, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v4}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v5}, Lcom/google/googlenav/wallpaper/MapWallpaper;->c(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v3, v5

    add-int/lit8 v5, v5, -0x4

    int-to-float v5, v5

    add-int/lit8 v6, v0, -0x4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v7}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_93
    invoke-direct {p0, v3, v0}, Lcom/google/googlenav/wallpaper/b;->a(II)V
    :try_end_96
    .catchall {:try_start_43 .. :try_end_96} :catchall_9c

    :cond_96
    if-eqz v1, :cond_1c

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1c

    :catchall_9c
    move-exception v0

    if-eqz v1, :cond_a2

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_a2
    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0, p1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v4}, Lcom/google/googlenav/wallpaper/MapWallpaper;->c(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_2d
    return-void
.end method

.method public a(LaA/r;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public a(LaA/t;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p1}, LaA/t;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v1}, Lcom/google/googlenav/wallpaper/b;->a(Z)V

    :cond_a
    return v1
.end method

.method public a(LaA/z;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->a()V

    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 8

    const-string v0, "android.wallpaper.tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    invoke-virtual {v0, p2, p3}, Lbg/d;->a(II)V

    :cond_11
    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 9

    const/4 v3, 0x0

    const/16 v6, 0x4c

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lat/h;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/M;->c(Z)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/app/Application;)Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->n:LaA/i;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->n:LaA/i;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {v0, v1, p0}, LaA/i;->a(Landroid/content/Context;LaA/m;)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/D;->r(Z)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v3, v4, v4}, Lcom/google/googlenav/android/l;->a(Ljava/util/Locale;Lcom/google/googlenav/android/C;ZZ)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->n()Lcom/google/googlenav/ui/android/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/wallpaper/c;

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/wallpaper/c;-><init>(Lcom/google/googlenav/wallpaper/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/z;->a(Landroid/view/View;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->l()Lat/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->e:Lat/h;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->i()LaJ/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->f:Lcom/google/googlenav/ui/at;

    new-instance v0, Lai/e;

    invoke-direct {v0, v3}, Lai/e;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->b:Lai/e;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->e:Lat/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/b;->a(Lat/h;)V

    new-instance v0, Lbg/d;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->getDesiredMinimumWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->getDesiredMinimumHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p0}, Lbg/d;-><init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/f;)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->c()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->am()Z

    move-result v0

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->c(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0, v5}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->i()LaJ/p;

    move-result-object v0

    invoke-virtual {v0, p0}, LaJ/p;->a(LaJ/w;)V

    :cond_108
    new-instance v0, Lcom/google/googlenav/wallpaper/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/wallpaper/d;-><init>(Lcom/google/googlenav/wallpaper/b;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_137

    const-string v0, "a"

    const-string v1, "p"

    invoke-static {v6, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_136
    return-void

    :cond_137
    const-string v1, "is_wallpaper_set"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_147

    const-string v1, "is_wallpaper_set"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_164

    :cond_147
    const-string v0, "a"

    const-string v1, "s"

    invoke-static {v6, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_wallpaper_set"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lag/b;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_136

    :cond_164
    const-string v0, "a"

    const-string v1, "w"

    invoke-static {v6, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_136
.end method

.method public onDestroy()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->isPreview()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->d(Lcom/google/googlenav/wallpaper/MapWallpaper;)Z

    move-result v0

    if-nez v0, :cond_30

    const/16 v0, 0x4c

    const-string v1, "a"

    const-string v2, "u"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_wallpaper_set"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lag/b;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zoom_level"

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    invoke-virtual {v2}, LaJ/p;->c()LaJ/Y;

    move-result-object v2

    invoke-virtual {v2}, LaJ/Y;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lag/b;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 8

    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    iput p1, p0, Lcom/google/googlenav/wallpaper/b;->g:F

    iput p2, p0, Lcom/google/googlenav/wallpaper/b;->h:F

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    invoke-virtual {v0, p1}, Lbg/d;->a(F)V

    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->a()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 9

    const/high16 v5, -0x100

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "show_traffic"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-virtual {v2}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v2

    const-string v3, "show_traffic"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/ui/D;->a(ZZ)V

    :cond_1b
    iput-boolean v1, p0, Lcom/google/googlenav/wallpaper/b;->l:Z

    const-string v2, "weather_on"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "weather_on"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/googlenav/wallpaper/b;->l:Z

    :cond_2d
    const-string v2, "map_mode"

    const-string v3, "map_mode_satellite"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string v3, "map_mode_terrain"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_51
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(I)Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/wallpaper/b;->b(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/wallpaper/b;->a(Landroid/content/SharedPreferences;)V

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->a()V

    :cond_69
    return-void

    :cond_6a
    const-string v3, "map_mode_normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_51

    :cond_7c
    move v0, v1

    goto :goto_51
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    if-lez p3, :cond_17

    if-lez p4, :cond_17

    iput p3, p0, Lcom/google/googlenav/wallpaper/b;->j:I

    iput p4, p0, Lcom/google/googlenav/wallpaper/b;->k:I

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->c:LaJ/p;

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/b;->d()I

    move-result v1

    invoke-virtual {v0, v1, p4}, LaJ/p;->d(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->a()V

    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/wallpaper/b;->i:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2c

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/b;->a(Z)V

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->n:LaA/i;

    invoke-virtual {v0, p1}, LaA/i;->b(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    invoke-virtual {v0, p1}, Lbg/d;->a(Landroid/view/MotionEvent;)V

    :cond_2b
    return-void

    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/wallpaper/b;->i:J

    goto :goto_1d
.end method

.method public onVisibilityChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->m:Lbg/d;

    invoke-virtual {v0, p1}, Lbg/d;->a(Z)V

    :cond_9
    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->e:Lat/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/b;->a(Lat/h;)V

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/b;->a()V

    :goto_13
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/googlenav/wallpaper/e;

    invoke-direct {v1, p0}, Lcom/google/googlenav/wallpaper/e;-><init>(Lcom/google/googlenav/wallpaper/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "UpdatingWallpaperZoomPref"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->e:Lat/h;

    invoke-virtual {v0}, Lat/h;->e()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->e:Lat/h;

    invoke-virtual {v0}, Lat/h;->f()V

    :cond_33
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/b;->d:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->k(Z)V

    goto :goto_13
.end method

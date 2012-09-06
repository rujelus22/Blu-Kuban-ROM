.class final Lcom/anddoes/launcher/kt;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ThemeDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/ThemeDetailsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/ThemeDetailsActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/kt;-><init>(Lcom/anddoes/launcher/ThemeDetailsActivity;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .registers 5

    .prologue
    .line 298
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->a(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->a(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 299
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->b(Lcom/anddoes/launcher/ThemeDetailsActivity;)Lcom/anddoes/launcher/preference/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/ThemeDetailsActivity;->c(Lcom/anddoes/launcher/ThemeDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "theme_icon_type"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->b(Lcom/anddoes/launcher/ThemeDetailsActivity;)Lcom/anddoes/launcher/preference/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/ThemeDetailsActivity;->d(Lcom/anddoes/launcher/ThemeDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "theme_iconpack_pkg"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_36
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->e(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->e(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 303
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->b(Lcom/anddoes/launcher/ThemeDetailsActivity;)Lcom/anddoes/launcher/preference/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/ThemeDetailsActivity;->d(Lcom/anddoes/launcher/ThemeDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "theme_skin_pkg"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_5b
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->f(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->f(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 306
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->b(Lcom/anddoes/launcher/ThemeDetailsActivity;)Lcom/anddoes/launcher/preference/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/ThemeDetailsActivity;->d(Lcom/anddoes/launcher/ThemeDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "theme_font_pkg"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_80
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->g(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->g(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 310
    :try_start_94
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ThemeDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 311
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 312
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 313
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 315
    iget-object v2, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/ThemeDetailsActivity;->h(Lcom/anddoes/launcher/ThemeDetailsActivity;)Lcom/anddoes/launcher/c/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anddoes/launcher/c/i;->i()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/ThemeDetailsActivity;->h(Lcom/anddoes/launcher/ThemeDetailsActivity;)Lcom/anddoes/launcher/c/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anddoes/launcher/c/i;->v()I

    move-result v3

    .line 314
    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_c5} :catch_c9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_94 .. :try_end_c5} :catch_c7

    .line 321
    :cond_c5
    :goto_c5
    const/4 v0, 0x0

    return-object v0

    :catch_c7
    move-exception v0

    goto :goto_c5

    .line 317
    :catch_c9
    move-exception v0

    goto :goto_c5
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/anddoes/launcher/kt;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->b()V

    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v1, v0, Lcom/anddoes/launcher/LauncherApplication;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    :cond_14
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    const-class v3, Lcom/anddoes/launcher/Launcher;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ThemeDetailsActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->finish()V

    return-void
.end method

.method protected final onPreExecute()V
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/anddoes/launcher/kt;->a:Lcom/anddoes/launcher/ThemeDetailsActivity;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->a()V

    .line 293
    return-void
.end method

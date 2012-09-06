.class public final Lcom/anddoes/launcher/c/a;
.super Lcom/anddoes/launcher/c/i;
.source "SourceFile"


# instance fields
.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/c/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.adw.launcher.THEMES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 5

    .prologue
    .line 27
    const-string v0, "theme_title"

    const-string v1, "authorName"

    const-string v2, "authorLink"

    const-string v3, "theme_description"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/anddoes/launcher/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_b
    invoke-virtual {p0}, Lcom/anddoes/launcher/c/a;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "themefont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/c/a;->l:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1c

    .line 34
    :goto_1b
    return-void

    .line 32
    :catch_1c
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/c/a;->l:Z

    goto :goto_1b
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 39
    const-string v0, "theme_preview"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/c/a;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/c/a;->f:Landroid/graphics/drawable/Drawable;

    .line 40
    const-string v0, "theme_wallpaper"

    const-string v1, "drawable"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/c/a;->k:I

    .line 41
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const-string v0, "adw_theme"

    return-object v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 50
    const v0, 0x7f020026

    return v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/anddoes/launcher/c/a;->l:Z

    return v0
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/anddoes/launcher/c/a;->k:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

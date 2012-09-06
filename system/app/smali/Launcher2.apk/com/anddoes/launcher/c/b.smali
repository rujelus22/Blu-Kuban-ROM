.class public final Lcom/anddoes/launcher/c/b;
.super Lcom/anddoes/launcher/c/i;
.source "SourceFile"


# instance fields
.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/c/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    iget-boolean v0, p0, Lcom/anddoes/launcher/c/b;->a:Z

    if-eqz v0, :cond_e

    .line 26
    iput-boolean v1, p0, Lcom/anddoes/launcher/c/b;->l:Z

    .line 27
    iput-boolean v1, p0, Lcom/anddoes/launcher/c/b;->m:Z

    .line 28
    iput-boolean v1, p0, Lcom/anddoes/launcher/c/b;->n:Z

    .line 30
    :cond_e
    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    .line 111
    invoke-static {p0}, Lcom/anddoes/launcher/c/b;->b(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 112
    const-string v1, "icon_pack"

    const-string v2, "theme_iconpack"

    invoke-static {p0, v0, v1, v2}, Lcom/anddoes/launcher/c/b;->a(Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v1, "com.anddoes.launcher.THEME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/c/b;->g(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_b

    .line 96
    iget-object v1, p0, Lcom/anddoes/launcher/c/b;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_b
    return-void
.end method

.method private g(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_b

    .line 105
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/c/b;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    :cond_b
    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 5

    .prologue
    .line 34
    const-string v0, "theme_title"

    const-string v1, "developer_name"

    const-string v2, "developer_link"

    const-string v3, "theme_description"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/anddoes/launcher/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "config_iconpack"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/c/b;->l:Z

    .line 36
    const-string v0, "config_apexskin"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/c/b;->m:Z

    .line 38
    :try_start_1b
    invoke-virtual {p0}, Lcom/anddoes/launcher/c/b;->i()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "themefont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/c/b;->n:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2b} :catch_2c

    .line 43
    :goto_2b
    return-void

    .line 41
    :catch_2c
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/c/b;->n:Z

    goto :goto_2b
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/anddoes/launcher/c/b;->a:Z

    if-eqz v0, :cond_8

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/c/b;->k:I

    .line 60
    :goto_7
    return-void

    .line 51
    :cond_8
    const-string v0, "theme_feature"

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/c/b;->g(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/c/b;->f:Landroid/graphics/drawable/Drawable;

    .line 52
    const-string v0, "theme_preview1"

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/c/b;->f(Ljava/lang/String;)V

    .line 53
    const-string v0, "theme_preview2"

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/c/b;->f(Ljava/lang/String;)V

    .line 54
    const-string v0, "theme_preview3"

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/c/b;->f(Ljava/lang/String;)V

    .line 55
    const-string v0, "theme_preview4"

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/c/b;->f(Ljava/lang/String;)V

    .line 56
    const-string v0, "theme_preview5"

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/c/b;->f(Ljava/lang/String;)V

    .line 58
    const-string v0, "default_wallpaper"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/c/b;->k:I

    goto :goto_7
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string v0, "apex_theme"

    return-object v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 70
    const v0, 0x7f02003b

    return v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/anddoes/launcher/c/b;->l:Z

    return v0
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/anddoes/launcher/c/b;->m:Z

    return v0
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/anddoes/launcher/c/b;->n:Z

    return v0
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/anddoes/launcher/c/b;->k:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

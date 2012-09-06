.class public final Lcom/anddoes/launcher/c/f;
.super Lcom/anddoes/launcher/c/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/c/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    .line 61
    invoke-static {p0}, Lcom/anddoes/launcher/c/f;->b(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 62
    const-string v1, "theme_iconpack"

    const-string v2, "icon_pack"

    invoke-static {p0, v0, v1, v2}, Lcom/anddoes/launcher/c/f;->a(Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v1, "com.fede.launcher.THEME_ICONPACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/anddoes/launcher/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const-string v0, "lp_theme"

    return-object v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 37
    const v0, 0x7f020043

    return v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

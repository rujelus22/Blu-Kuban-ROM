.class final Lcom/anddoes/launcher/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/EditShortcutActivity;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/anddoes/launcher/cf;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-object p3, p0, Lcom/anddoes/launcher/cf;->d:Ljava/lang/String;

    .line 744
    if-eqz p2, :cond_2d

    .line 745
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/anddoes/launcher/cf;->e:Ljava/lang/String;

    .line 746
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/anddoes/launcher/cf;->f:Ljava/lang/String;

    .line 747
    invoke-static {p1}, Lcom/anddoes/launcher/EditShortcutActivity;->b(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/cf;->b:Ljava/lang/String;

    .line 748
    invoke-static {p1}, Lcom/anddoes/launcher/EditShortcutActivity;->b(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/cf;->c:Landroid/graphics/drawable/Drawable;

    .line 750
    :cond_2d
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/anddoes/launcher/cf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/anddoes/launcher/cf;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/anddoes/launcher/cf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/anddoes/launcher/cf;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/anddoes/launcher/cf;->f:Ljava/lang/String;

    return-object v0
.end method

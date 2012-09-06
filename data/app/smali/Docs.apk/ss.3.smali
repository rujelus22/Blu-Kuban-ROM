.class Lss;
.super Ljava/lang/Object;
.source "OpenerOption.java"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final a:Ljava/lang/CharSequence;

.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lss;->a:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lss;->a:Ljava/lang/CharSequence;

    .line 45
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lss;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Lss;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    if-nez p1, :cond_4

    .line 66
    :cond_3
    :goto_3
    return-object v0

    .line 57
    :cond_4
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_3

    .line 61
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :try_start_13
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 64
    new-instance v1, Lss;

    invoke-direct {v1, v3, v2, p2}, Lss;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1c} :catch_1e

    move-object v0, v1

    goto :goto_3

    .line 65
    :catch_1e
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lss;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

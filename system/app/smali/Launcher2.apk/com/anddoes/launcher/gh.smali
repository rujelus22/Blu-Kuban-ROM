.class public final Lcom/anddoes/launcher/gh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/gg;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/gg;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/anddoes/launcher/gh;->a:Lcom/anddoes/launcher/gg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/anddoes/launcher/gh;->b:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lcom/anddoes/launcher/gh;->c:Ljava/lang/String;

    .line 215
    iput-object p4, p0, Lcom/anddoes/launcher/gh;->d:Landroid/graphics/drawable/Drawable;

    .line 216
    iput-object p5, p0, Lcom/anddoes/launcher/gh;->e:Ljava/lang/String;

    .line 217
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/anddoes/launcher/gh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 232
    const-string v0, "LAUNCHER_ACTION"

    iget-object v1, p0, Lcom/anddoes/launcher/gh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/anddoes/launcher/gh;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/anddoes/launcher/gh;->e:Ljava/lang/String;

    return-object v0
.end method

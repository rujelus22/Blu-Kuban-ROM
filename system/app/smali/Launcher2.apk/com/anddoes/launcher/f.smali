.class public final Lcom/anddoes/launcher/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:I

.field final synthetic d:Lcom/anddoes/launcher/e;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/e;Landroid/content/res/Resources;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/anddoes/launcher/f;->d:Lcom/anddoes/launcher/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/f;->a:Ljava/lang/CharSequence;

    .line 55
    const/4 v0, -0x1

    if-eq p4, v0, :cond_17

    .line 56
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/f;->b:Landroid/graphics/drawable/Drawable;

    .line 60
    :goto_14
    iput p5, p0, Lcom/anddoes/launcher/f;->c:I

    .line 61
    return-void

    .line 58
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/f;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_14
.end method

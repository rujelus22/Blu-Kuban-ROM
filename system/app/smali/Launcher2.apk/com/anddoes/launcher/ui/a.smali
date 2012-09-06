.class public final Lcom/anddoes/launcher/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/anddoes/launcher/ui/a;->a:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object p2, p0, Lcom/anddoes/launcher/ui/a;->b:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/anddoes/launcher/ui/a;->c:Landroid/view/View$OnClickListener;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anddoes/launcher/ui/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/anddoes/launcher/ui/a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/anddoes/launcher/ui/a;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.class final Lcom/anddoes/launcher/jv;
.super Lcom/anddoes/launcher/gj;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PreviewPane;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/PreviewPane;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/jv;->a:Lcom/anddoes/launcher/PreviewPane;

    iput-object p2, p0, Lcom/anddoes/launcher/jv;->b:Landroid/view/View;

    .line 298
    invoke-direct {p0}, Lcom/anddoes/launcher/gj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/anddoes/launcher/jv;->b:Landroid/view/View;

    const/4 v1, 0x0

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f80

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 302
    return-void
.end method

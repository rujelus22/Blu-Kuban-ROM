.class final Lcom/anddoes/launcher/fj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Lcom/anddoes/launcher/ec;

.field private final synthetic d:Lcom/anddoes/launcher/ui/f;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/ui/f;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/fj;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/fj;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/anddoes/launcher/fj;->c:Lcom/anddoes/launcher/ec;

    iput-object p4, p0, Lcom/anddoes/launcher/fj;->d:Lcom/anddoes/launcher/ui/f;

    .line 5502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 5504
    iget-object v0, p0, Lcom/anddoes/launcher/fj;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5505
    if-eqz v0, :cond_13

    .line 5506
    iget-object v0, p0, Lcom/anddoes/launcher/fj;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/fj;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/anddoes/launcher/fj;->c:Lcom/anddoes/launcher/ec;

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;Lcom/anddoes/launcher/ec;)V

    .line 5508
    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/fj;->d:Lcom/anddoes/launcher/ui/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ui/f;->b()V

    .line 5509
    return-void
.end method

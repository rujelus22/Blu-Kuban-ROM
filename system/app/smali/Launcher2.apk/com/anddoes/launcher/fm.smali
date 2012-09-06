.class final Lcom/anddoes/launcher/fm;
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
    iput-object p1, p0, Lcom/anddoes/launcher/fm;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/fm;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/anddoes/launcher/fm;->c:Lcom/anddoes/launcher/ec;

    iput-object p4, p0, Lcom/anddoes/launcher/fm;->d:Lcom/anddoes/launcher/ui/f;

    .line 5535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 5537
    iget-object v0, p0, Lcom/anddoes/launcher/fm;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5538
    if-eqz v0, :cond_1d

    .line 5539
    iget-object v1, p0, Lcom/anddoes/launcher/fm;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v1

    .line 5540
    iget-object v2, p0, Lcom/anddoes/launcher/fm;->c:Lcom/anddoes/launcher/ec;

    iget-object v3, p0, Lcom/anddoes/launcher/fm;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v1, v2, v3, v0}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/ec;Landroid/view/View;Lcom/anddoes/launcher/CellLayout;)V

    .line 5542
    :cond_1d
    iget-object v0, p0, Lcom/anddoes/launcher/fm;->d:Lcom/anddoes/launcher/ui/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ui/f;->b()V

    .line 5543
    return-void
.end method

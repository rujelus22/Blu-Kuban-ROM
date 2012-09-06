.class final Lcom/anddoes/launcher/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private b:Lcom/anddoes/launcher/gc;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/gc;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5753
    iput-object p1, p0, Lcom/anddoes/launcher/gd;->a:Lcom/anddoes/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5754
    iput-object p2, p0, Lcom/anddoes/launcher/gd;->b:Lcom/anddoes/launcher/gc;

    .line 5755
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5760
    iget-object v0, p0, Lcom/anddoes/launcher/gd;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->o(Lcom/anddoes/launcher/Launcher;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 5761
    iget-object v1, p0, Lcom/anddoes/launcher/gd;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v0, p0, Lcom/anddoes/launcher/gd;->b:Lcom/anddoes/launcher/gc;

    iget-object v0, v0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Launcher;I)Z

    .line 5762
    return-void
.end method

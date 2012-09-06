.class final Lcom/anddoes/launcher/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/anddoes/launcher/cl;->a:I

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    iget v2, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iget v3, p0, Lcom/anddoes/launcher/cl;->a:I

    mul-int/2addr v2, v3

    iget v0, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    add-int/2addr v0, v2

    iget v2, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iget v3, p0, Lcom/anddoes/launcher/cl;->a:I

    mul-int/2addr v2, v3

    iget v1, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

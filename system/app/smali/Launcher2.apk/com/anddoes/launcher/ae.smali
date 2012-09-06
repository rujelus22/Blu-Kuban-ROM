.class final Lcom/anddoes/launcher/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/AppsCustomizePagedView;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Lcom/anddoes/launcher/jl;

.field private final synthetic e:Z

.field private final synthetic f:I

.field private final synthetic g:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/AppsCustomizePagedView;IILcom/anddoes/launcher/jl;ZILjava/util/ArrayList;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ae;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iput p2, p0, Lcom/anddoes/launcher/ae;->b:I

    iput p3, p0, Lcom/anddoes/launcher/ae;->c:I

    iput-object p4, p0, Lcom/anddoes/launcher/ae;->d:Lcom/anddoes/launcher/jl;

    iput-boolean p5, p0, Lcom/anddoes/launcher/ae;->e:Z

    iput p6, p0, Lcom/anddoes/launcher/ae;->f:I

    iput-object p7, p0, Lcom/anddoes/launcher/ae;->g:Ljava/util/ArrayList;

    .line 1615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1618
    iget v3, p0, Lcom/anddoes/launcher/ae;->b:I

    .line 1619
    iget v4, p0, Lcom/anddoes/launcher/ae;->c:I

    .line 1620
    iget-object v0, p0, Lcom/anddoes/launcher/ae;->d:Lcom/anddoes/launcher/jl;

    invoke-virtual {v0}, Lcom/anddoes/launcher/jl;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1f

    .line 1621
    iget-object v0, p0, Lcom/anddoes/launcher/ae;->d:Lcom/anddoes/launcher/jl;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/jl;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedViewWidget;

    .line 1622
    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewWidget;->a()[I

    move-result-object v0

    .line 1623
    aget v3, v0, v1

    .line 1624
    const/4 v1, 0x1

    aget v4, v0, v1

    .line 1626
    :cond_1f
    iget-boolean v0, p0, Lcom/anddoes/launcher/ae;->e:Z

    if-eqz v0, :cond_38

    .line 1627
    new-instance v0, Lcom/anddoes/launcher/ar;

    iget v1, p0, Lcom/anddoes/launcher/ae;->f:I

    iget-object v2, p0, Lcom/anddoes/launcher/ae;->g:Ljava/util/ArrayList;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/ar;-><init>(ILjava/util/ArrayList;IILcom/anddoes/launcher/aq;Lcom/anddoes/launcher/aq;)V

    .line 1629
    iget-object v1, p0, Lcom/anddoes/launcher/ae;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-static {v1, v5, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/AppsCustomizePagedView;Lcom/anddoes/launcher/z;Lcom/anddoes/launcher/ar;)V

    .line 1630
    iget-object v1, p0, Lcom/anddoes/launcher/ae;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-static {v1, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/AppsCustomizePagedView;Lcom/anddoes/launcher/ar;)V

    .line 1635
    :goto_37
    return-void

    .line 1632
    :cond_38
    iget-object v0, p0, Lcom/anddoes/launcher/ae;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget v1, p0, Lcom/anddoes/launcher/ae;->f:I

    iget-object v2, p0, Lcom/anddoes/launcher/ae;->g:Ljava/util/ArrayList;

    .line 1633
    iget-object v5, p0, Lcom/anddoes/launcher/ae;->a:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-static {v5}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(Lcom/anddoes/launcher/AppsCustomizePagedView;)I

    .line 1632
    invoke-static {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/AppsCustomizePagedView;ILjava/util/ArrayList;II)V

    goto :goto_37
.end method

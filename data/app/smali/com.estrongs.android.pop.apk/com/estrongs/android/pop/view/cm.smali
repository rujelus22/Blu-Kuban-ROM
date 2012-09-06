.class Lcom/estrongs/android/pop/view/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/view/ld;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cm;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cm;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/estrongs/android/pop/view/cm;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-eq v1, v0, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cm;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cm;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_b
.end method

.method public b(I)V
    .registers 2

    return-void
.end method

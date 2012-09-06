.class Lcom/estrongs/android/pop/view/fe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/clipboardview/f;
.implements Lcom/estrongs/android/pop/clipboardview/g;
.implements Lcom/estrongs/android/pop/clipboardview/h;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fe;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/fe;->b:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fe;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/fe;->b:Z

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fe;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->getCount()I

    move-result v0

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fe;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/clipboardview/ClipboardGridView;->clearTextFilter()V

    :cond_27
    return-void
.end method

.method public b()V
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/fe;->b:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fe;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/fe;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fe;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->requestFocusFromTouch()Z

    :cond_1b
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

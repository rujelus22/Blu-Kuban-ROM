.class Lcom/estrongs/android/widget/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/q;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/r;->a:Lcom/estrongs/android/widget/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/r;->a:Lcom/estrongs/android/widget/q;

    invoke-static {v0}, Lcom/estrongs/android/widget/q;->a(Lcom/estrongs/android/widget/q;)Lcom/estrongs/android/widget/FileBrowserDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/FileBrowserDialog;->b(Lcom/estrongs/android/widget/FileBrowserDialog;Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/r;->a:Lcom/estrongs/android/widget/q;

    invoke-static {v0}, Lcom/estrongs/android/widget/q;->a(Lcom/estrongs/android/widget/q;)Lcom/estrongs/android/widget/FileBrowserDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->l(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/r;->a:Lcom/estrongs/android/widget/q;

    invoke-static {v0}, Lcom/estrongs/android/widget/q;->a(Lcom/estrongs/android/widget/q;)Lcom/estrongs/android/widget/FileBrowserDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->m(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/r;->a:Lcom/estrongs/android/widget/q;

    invoke-static {v1}, Lcom/estrongs/android/widget/q;->a(Lcom/estrongs/android/widget/q;)Lcom/estrongs/android/widget/FileBrowserDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/widget/FileBrowserDialog;->l(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

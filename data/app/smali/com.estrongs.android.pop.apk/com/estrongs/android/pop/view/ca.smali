.class Lcom/estrongs/android/pop/view/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/bz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bz;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ca;->a:Lcom/estrongs/android/pop/view/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ca;->a:Lcom/estrongs/android/pop/view/bz;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/bz;->a(Lcom/estrongs/android/pop/view/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ca;->a:Lcom/estrongs/android/pop/view/bz;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/bz;->a(Lcom/estrongs/android/pop/view/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ca;->a:Lcom/estrongs/android/pop/view/bz;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/bz;->a(Lcom/estrongs/android/pop/view/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

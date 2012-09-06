.class Lcom/estrongs/android/pop/view/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_c

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_c
    if-ne p2, v1, :cond_16

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->R(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_16
    const/4 v2, 0x2

    if-ne p2, v2, :cond_21

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->S(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_21
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2c

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->T(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_2c
    const/4 v2, 0x4

    if-ne p2, v2, :cond_38

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->U(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_37
    move v0, v1

    :cond_38
    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0900f5

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_46
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-lez p2, :cond_50

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W()V

    :cond_50
    return-void

    :cond_51
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_46
.end method

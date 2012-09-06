.class Lcom/estrongs/android/pop/view/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ff;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(I)Z

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->openOptionsMenu()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ILjava/lang/Object;I)V

    goto :goto_26
.end method

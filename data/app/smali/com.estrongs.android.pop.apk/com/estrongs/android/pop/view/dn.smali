.class Lcom/estrongs/android/pop/view/dn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dn;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dn;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)Z

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dn;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ag:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/FileBrowserDialog;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dn;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dn;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ag:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/FileBrowserDialog;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/dn;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ag:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/FileBrowserDialog;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/util/List;)Z

    return-void
.end method

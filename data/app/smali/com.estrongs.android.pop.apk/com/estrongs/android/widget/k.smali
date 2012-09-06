.class Lcom/estrongs/android/widget/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/FileBrowserDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/k;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/estrongs/android/widget/k;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->f(Lcom/estrongs/android/widget/FileBrowserDialog;)Lcom/estrongs/android/widget/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/w;->b()V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/estrongs/android/widget/k;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v1}, Lcom/estrongs/android/widget/FileBrowserDialog;->f(Lcom/estrongs/android/widget/FileBrowserDialog;)Lcom/estrongs/android/widget/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/w;->d(Ljava/io/File;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v1, p0, Lcom/estrongs/android/widget/k;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v1, v1, Lcom/estrongs/android/widget/FileBrowserDialog;->e:Lcom/estrongs/android/widget/u;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/estrongs/android/widget/k;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v1, v1, Lcom/estrongs/android/widget/FileBrowserDialog;->e:Lcom/estrongs/android/widget/u;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/estrongs/android/widget/u;->a(Ljava/lang/String;)V

    goto :goto_22
.end method

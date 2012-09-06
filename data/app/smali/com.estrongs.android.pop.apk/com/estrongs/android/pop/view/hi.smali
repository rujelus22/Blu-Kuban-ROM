.class Lcom/estrongs/android/pop/view/hi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/hh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/hh;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hi;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hi;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/hh;->a(Lcom/estrongs/android/pop/view/hh;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hi;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/hh;->a(Lcom/estrongs/android/pop/view/hh;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hi;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/hh;->a(Lcom/estrongs/android/pop/view/hh;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hi;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/hh;->b(Lcom/estrongs/android/pop/view/hh;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hi;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/hh;->a(Lcom/estrongs/android/pop/view/hh;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/estrongs/android/pop/view/hi;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/hh;->b(Lcom/estrongs/android/pop/view/hh;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hi;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/hh;->b(Lcom/estrongs/android/pop/view/hh;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v2, 0x7f0902ba

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_33
.end method

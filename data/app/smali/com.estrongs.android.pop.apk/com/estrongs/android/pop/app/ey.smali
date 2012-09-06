.class Lcom/estrongs/android/pop/app/ey;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ZipViewer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ZipViewer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->h(Lcom/estrongs/android/pop/app/ZipViewer;)Lcom/estrongs/android/pop/app/ck;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->h(Lcom/estrongs/android/pop/app/ZipViewer;)Lcom/estrongs/android/pop/app/ck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ck;->dismiss()V

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->i(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ZipViewer;->j(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->b(Lcom/estrongs/android/pop/app/ZipViewer;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_6a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->k(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->k(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_62
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->finish()V

    goto :goto_3b

    :catch_68
    move-exception v0

    goto :goto_3b

    :cond_6a
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->l(Lcom/estrongs/android/pop/app/ZipViewer;)V
    :try_end_73
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_73} :catch_68

    goto :goto_3b
.end method

.class Lcom/estrongs/android/pop/app/imageviewer/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/bf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bg;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bg;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bg;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v2

    const v3, 0x7f0901e2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bg;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bg;->a:Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    return-void
.end method

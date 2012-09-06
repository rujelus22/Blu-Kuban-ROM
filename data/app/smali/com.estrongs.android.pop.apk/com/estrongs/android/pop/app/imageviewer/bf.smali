.class Lcom/estrongs/android/pop/app/imageviewer/bf;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bf;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/bf;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bf;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bf;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bf;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ViewImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bf;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bf;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bg;-><init>(Lcom/estrongs/android/pop/app/imageviewer/bf;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bf;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bh;-><init>(Lcom/estrongs/android/pop/app/imageviewer/bf;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_32
.end method

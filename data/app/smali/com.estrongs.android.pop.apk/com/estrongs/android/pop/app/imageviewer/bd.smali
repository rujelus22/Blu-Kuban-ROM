.class Lcom/estrongs/android/pop/app/imageviewer/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bd;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bd;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bd;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/k;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bd;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bd;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bd;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bd;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

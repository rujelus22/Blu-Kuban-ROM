.class Lcom/estrongs/android/pop/app/es;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ZipViewer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ZipViewer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/es;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/es;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->b(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/app/es;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Lcom/estrongs/android/pop/app/ZipViewer;Z)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/app/es;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Lcom/estrongs/android/pop/app/ZipViewer;Z)V

    goto :goto_12
.end method

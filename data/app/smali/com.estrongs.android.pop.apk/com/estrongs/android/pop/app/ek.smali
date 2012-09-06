.class Lcom/estrongs/android/pop/app/ek;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ZipViewer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ZipViewer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ek;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ek;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->m(Lcom/estrongs/android/pop/app/ZipViewer;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ek;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->m(Lcom/estrongs/android/pop/app/ZipViewer;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->d()V

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ek;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->k(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ek;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->finish()V

    return-void
.end method

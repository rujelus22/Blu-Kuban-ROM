.class Lcom/estrongs/android/pop/app/el;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ZipViewer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ZipViewer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/el;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/el;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->h(Lcom/estrongs/android/pop/app/ZipViewer;)Lcom/estrongs/android/pop/app/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/el;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ZipViewer;->a:Lcom/estrongs/android/pop/app/cp;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/cp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ck;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/el;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->showDialog(I)V

    return-void
.end method

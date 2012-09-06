.class Lcom/estrongs/android/pop/view/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/Downloader;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/Downloader;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ay;->a:Lcom/estrongs/android/pop/view/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ay;->a:Lcom/estrongs/android/pop/view/Downloader;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Downloader;->d:Lcom/estrongs/android/pop/view/ba;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ba;->cancel(Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ay;->a:Lcom/estrongs/android/pop/view/Downloader;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/Downloader;->d:Lcom/estrongs/android/pop/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ba;->a(Lcom/estrongs/android/pop/view/ba;)Lcom/estrongs/android/pop/view/Downloader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/Downloader;->c(I)V

    return-void
.end method

.class Lcom/estrongs/android/pop/app/imageviewer/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/at;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/at;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/at;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/at;->a(Lcom/estrongs/android/pop/app/imageviewer/at;)Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/at;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;->b(Lcom/estrongs/android/pop/app/imageviewer/aq;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/at;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/at;->b(Lcom/estrongs/android/pop/app/imageviewer/at;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/at;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/at;->b(Lcom/estrongs/android/pop/app/imageviewer/at;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_20
    return-void
.end method

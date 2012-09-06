.class Lcom/estrongs/android/pop/view/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/s;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/s;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->i(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/view/s;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->setResult(ILandroid/content/Intent;)V

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/view/s;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->finish()V

    return-void
.end method

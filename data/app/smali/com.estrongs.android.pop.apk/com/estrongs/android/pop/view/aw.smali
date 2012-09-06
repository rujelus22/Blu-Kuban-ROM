.class Lcom/estrongs/android/pop/view/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/av;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/av;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/aw;->a:Lcom/estrongs/android/pop/view/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aw;->a:Lcom/estrongs/android/pop/view/av;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/av;->a(Lcom/estrongs/android/pop/view/av;)Lcom/estrongs/android/pop/view/au;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/au;->a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/aw;->a:Lcom/estrongs/android/pop/view/av;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/av;->a(Lcom/estrongs/android/pop/view/av;)Lcom/estrongs/android/pop/view/au;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/au;->a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

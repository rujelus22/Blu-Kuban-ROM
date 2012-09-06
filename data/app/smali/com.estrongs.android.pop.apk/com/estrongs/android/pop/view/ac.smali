.class Lcom/estrongs/android/pop/view/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ac;->a:Lcom/estrongs/android/pop/view/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ac;->a:Lcom/estrongs/android/pop/view/aa;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/aa;->a(Lcom/estrongs/android/pop/view/aa;)Lcom/estrongs/android/pop/view/z;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ac;->a:Lcom/estrongs/android/pop/view/aa;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/aa;->a(Lcom/estrongs/android/pop/view/aa;)Lcom/estrongs/android/pop/view/z;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v2

    const v3, 0x7f0901b2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ac;->a:Lcom/estrongs/android/pop/view/aa;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/aa;->a(Lcom/estrongs/android/pop/view/aa;)Lcom/estrongs/android/pop/view/z;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v2

    const v3, 0x7f0901b4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ac;->a:Lcom/estrongs/android/pop/view/aa;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/aa;->a(Lcom/estrongs/android/pop/view/aa;)Lcom/estrongs/android/pop/view/z;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->k(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ac;->a:Lcom/estrongs/android/pop/view/aa;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/aa;->a(Lcom/estrongs/android/pop/view/aa;)Lcom/estrongs/android/pop/view/z;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->l(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V

    return-void
.end method

.class Lcom/estrongs/android/pop/view/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/aa;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/aa;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ab;->a:Lcom/estrongs/android/pop/view/aa;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ab;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ab;->a:Lcom/estrongs/android/pop/view/aa;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/aa;->a(Lcom/estrongs/android/pop/view/aa;)Lcom/estrongs/android/pop/view/z;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ab;->a:Lcom/estrongs/android/pop/view/aa;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/aa;->a(Lcom/estrongs/android/pop/view/aa;)Lcom/estrongs/android/pop/view/z;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v2

    const v3, 0x7f0901b3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ab;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

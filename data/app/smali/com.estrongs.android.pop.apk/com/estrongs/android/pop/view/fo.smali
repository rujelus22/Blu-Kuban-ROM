.class Lcom/estrongs/android/pop/view/fo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/fk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fo;->a:Lcom/estrongs/android/pop/view/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fo;->a:Lcom/estrongs/android/pop/view/fk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fk;->b(Lcom/estrongs/android/pop/view/fk;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fo;->a:Lcom/estrongs/android/pop/view/fk;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/fk;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->b(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fo;->a:Lcom/estrongs/android/pop/view/fk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fk;->a(Lcom/estrongs/android/pop/view/fk;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fo;->a:Lcom/estrongs/android/pop/view/fk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fk;->b(Lcom/estrongs/android/pop/view/fk;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f09005c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.class Lcom/estrongs/android/pop/view/dv;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/estrongs/android/util/r;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private final synthetic c:Ljava/lang/StringBuilder;

.field private final synthetic d:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/StringBuilder;Landroid/app/AlertDialog;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dv;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/dv;->c:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/dv;->d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/dv;[Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/dv;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/List;)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/pop/view/dw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/dw;-><init>(Lcom/estrongs/android/pop/view/dv;)V

    new-instance v1, Lcom/estrongs/android/util/r;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/r;-><init>(Lcom/estrongs/android/util/s;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/util/r;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/util/r;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/r;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/util/r;

    invoke-virtual {v3}, Lcom/estrongs/android/util/r;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/util/r;

    invoke-virtual {v2}, Lcom/estrongs/android/util/r;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/dv;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dv;->c:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dv;->c:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dv;->d:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/dv;->a([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/util/r;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dv;->a:Lcom/estrongs/android/util/r;

    invoke-virtual {v0}, Lcom/estrongs/android/util/r;->a()V

    :cond_9
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/dv;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/dv;->a([Ljava/lang/String;)V

    return-void
.end method

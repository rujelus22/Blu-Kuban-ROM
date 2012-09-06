.class Lcom/estrongs/android/pop/view/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/a/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/a/f;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .registers 6

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7

    check-cast p1, Lcom/estrongs/android/util/v;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_14
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0x1e242

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/f;->a:Lcom/estrongs/android/pop/view/a/e;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/os/Message;J)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 8

    const-wide/16 v4, 0x0

    check-cast p1, Lcom/estrongs/android/util/v;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/f;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/pop/view/a/e;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_26

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/estrongs/android/pop/view/a/e;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_26
    if-lez v0, :cond_38

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0x1e241

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/f;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-virtual {v1, v0, v4, v5}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/os/Message;J)V

    :goto_37
    return-void

    :cond_38
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0x1e242

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a/f;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-virtual {v1, v0, v4, v5}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/os/Message;J)V

    goto :goto_37
.end method

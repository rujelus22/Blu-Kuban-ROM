.class Lcom/estrongs/android/pop/view/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/a/e;

.field private b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/a/e;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/a/h;->a:Lcom/estrongs/android/pop/view/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/view/a/h;->b:I

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

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/view/a/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/a/h;->b:I

    check-cast p1, Lcom/estrongs/android/util/v;

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->g()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    iget v0, p0, Lcom/estrongs/android/pop/view/a/h;->b:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_23

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->f()V

    :goto_22
    return-void

    :cond_23
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/android/util/v;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_22
.end method

.method public b(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/estrongs/android/util/v;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v0, p1, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/a/k;

    const v2, 0x1e244

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/e;->a(Lcom/estrongs/android/pop/view/a/k;)V

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/k;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a/h;->a:Lcom/estrongs/android/pop/view/a/e;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/os/Message;J)V

    :cond_20
    return-void
.end method

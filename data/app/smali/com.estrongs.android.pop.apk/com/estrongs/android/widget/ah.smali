.class Lcom/estrongs/android/widget/ah;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-object v0, v0, Lcom/estrongs/android/widget/ag;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-object v1, v1, Lcom/estrongs/android/widget/ag;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    invoke-static {v0}, Lcom/estrongs/android/widget/ag;->a(Lcom/estrongs/android/widget/ag;)Lcom/estrongs/android/widget/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-object v1, v1, Lcom/estrongs/android/widget/ag;->a:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-object v2, v2, Lcom/estrongs/android/widget/ag;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-wide v3, v3, Lcom/estrongs/android/widget/ag;->g:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/widget/aj;->a(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V

    goto :goto_13

    :cond_2f
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    invoke-static {v0}, Lcom/estrongs/android/widget/ag;->a(Lcom/estrongs/android/widget/ag;)Lcom/estrongs/android/widget/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-object v1, v1, Lcom/estrongs/android/widget/ag;->a:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-object v2, v2, Lcom/estrongs/android/widget/ag;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-wide v3, v3, Lcom/estrongs/android/widget/ag;->h:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/widget/aj;->b(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-wide v0, v0, Lcom/estrongs/android/widget/ag;->h:J

    long-to-double v0, v0

    iget-object v2, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-wide v2, v2, Lcom/estrongs/android/widget/ag;->g:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-object v2, v2, Lcom/estrongs/android/widget/ag;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/ah;->a:Lcom/estrongs/android/widget/ag;

    iget-object v3, v3, Lcom/estrongs/android/widget/ag;->e:Ljava/text/NumberFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method

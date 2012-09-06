.class final Lcom/mobfox/video/sdk/r;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/q;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/q;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v1, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_f2

    :cond_6
    :goto_6
    return-void

    :sswitch_7
    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/q;->b()V

    goto :goto_6

    :sswitch_d
    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->a(Lcom/mobfox/video/sdk/q;)I

    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->b(Lcom/mobfox/video/sdk/q;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->c(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/g;->u:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/mobfox/video/sdk/r;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobfox/video/sdk/r;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    :sswitch_2e
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_100

    goto :goto_6

    :pswitch_34
    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->d(Lcom/mobfox/video/sdk/q;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->e(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/ci;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v1}, Lcom/mobfox/video/sdk/q;->f(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :pswitch_53
    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->g(Lcom/mobfox/video/sdk/q;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->e(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/ci;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v1}, Lcom/mobfox/video/sdk/q;->g(Lcom/mobfox/video/sdk/q;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :pswitch_71
    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->h(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->e(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/ci;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v1}, Lcom/mobfox/video/sdk/q;->h(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :pswitch_91
    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->i(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->e(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/ci;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v1}, Lcom/mobfox/video/sdk/q;->i(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :pswitch_b1
    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->j(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->e(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/ci;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v1}, Lcom/mobfox/video/sdk/q;->j(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :pswitch_d1
    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->k(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->e(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/ci;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mobfox/video/sdk/r;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v1}, Lcom/mobfox/video/sdk/q;->k(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    nop

    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_d
        0x64 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_34
        :pswitch_53
        :pswitch_71
        :pswitch_91
        :pswitch_b1
        :pswitch_d1
    .end packed-switch
.end method

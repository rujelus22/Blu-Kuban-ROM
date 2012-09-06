.class final Lcom/mobfox/video/sdk/aa;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/z;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/z;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_96

    :goto_5
    return-void

    :sswitch_6
    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/z;->b()V

    goto :goto_5

    :sswitch_c
    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->a(Lcom/mobfox/video/sdk/z;)V

    goto :goto_5

    :sswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_a4

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/z;->requestLayout()V

    goto :goto_5

    :pswitch_1d
    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->b(Lcom/mobfox/video/sdk/z;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->c(Lcom/mobfox/video/sdk/z;)Lcom/mobfox/video/sdk/ci;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v1}, Lcom/mobfox/video/sdk/z;->d(Lcom/mobfox/video/sdk/z;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    :pswitch_3c
    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->e(Lcom/mobfox/video/sdk/z;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->c(Lcom/mobfox/video/sdk/z;)Lcom/mobfox/video/sdk/ci;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v1}, Lcom/mobfox/video/sdk/z;->f(Lcom/mobfox/video/sdk/z;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    :pswitch_5b
    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->g(Lcom/mobfox/video/sdk/z;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->h(Lcom/mobfox/video/sdk/z;)V

    goto :goto_17

    :pswitch_69
    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->g(Lcom/mobfox/video/sdk/z;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->h(Lcom/mobfox/video/sdk/z;)V

    goto :goto_17

    :pswitch_77
    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->i(Lcom/mobfox/video/sdk/z;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v0}, Lcom/mobfox/video/sdk/z;->c(Lcom/mobfox/video/sdk/z;)Lcom/mobfox/video/sdk/ci;

    move-result-object v0

    const/16 v1, -0xd

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ci;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/aa;->a:Lcom/mobfox/video/sdk/z;

    invoke-static {v1}, Lcom/mobfox/video/sdk/z;->i(Lcom/mobfox/video/sdk/z;)Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    nop

    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_c
        0x64 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_69
        :pswitch_5b
        :pswitch_77
        :pswitch_1d
        :pswitch_3c
    .end packed-switch
.end method

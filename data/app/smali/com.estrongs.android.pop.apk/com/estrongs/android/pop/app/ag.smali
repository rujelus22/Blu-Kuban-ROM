.class Lcom/estrongs/android/pop/app/ag;
.super Landroid/os/Handler;


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/ag;->a:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ag;)Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->p(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_126

    goto :goto_9

    :pswitch_12
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()I

    move-result v1

    if-gtz v1, :cond_7a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->s(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->t(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_51
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->u(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    goto :goto_9

    :pswitch_57
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V

    goto :goto_9

    :pswitch_61
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->finish()V

    goto :goto_9

    :pswitch_67
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/estrongs/android/pop/app/ah;

    invoke-direct {v2, p0, v0, v1}, Lcom/estrongs/android/pop/app/ah;-><init>(Lcom/estrongs/android/pop/app/ag;II)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/ah;->start()V

    goto :goto_9

    :cond_7a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->p()I

    move-result v0

    if-le v0, v1, :cond_87

    move v0, v1

    :cond_87
    mul-int/lit16 v2, v0, 0x3e8

    div-int/2addr v2, v1

    iget v3, p0, Lcom/estrongs/android/pop/app/ag;->a:I

    if-eq v3, v2, :cond_99

    iput v2, p0, Lcom/estrongs/android/pop/app/ag;->a:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_99
    iget-object v2, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->s(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->t(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_51

    :cond_b8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->s(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->t(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_51

    :cond_d9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->s(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->t(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_51

    :pswitch_fa
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_112

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const v2, 0x7f0901f4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :cond_112
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ag;->b:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const v2, 0x7f0901f5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_12
        :pswitch_67
        :pswitch_fa
        :pswitch_57
        :pswitch_67
        :pswitch_61
    .end packed-switch
.end method

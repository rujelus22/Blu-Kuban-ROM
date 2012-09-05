.class final Lcom/google/android/youtube/core/player/w;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/p;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/p;)V
    .registers 2
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 917
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_114

    .line 956
    :cond_7
    :goto_7
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->j(Lcom/google/android/youtube/core/player/p;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 957
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12c

    .line 972
    :goto_14
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->m(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/ad;->a(Landroid/os/Message;)Z

    .line 973
    return-void

    .line 919
    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;Z)Z

    .line 920
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->f(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->c()V

    .line 921
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->g(Lcom/google/android/youtube/core/player/p;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 922
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/p;->b(Lcom/google/android/youtube/core/player/p;Z)Z

    .line 923
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->h(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/c;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/p;->c(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/c;->a(Lcom/google/android/youtube/core/model/Video;)V

    goto :goto_7

    .line 928
    :pswitch_49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->i(Lcom/google/android/youtube/core/player/p;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 929
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->f(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d()V

    goto :goto_7

    .line 933
    :pswitch_5b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->f(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(III)V

    .line 934
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->j(Lcom/google/android/youtube/core/player/p;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 935
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->k(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/AdOverlay;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->a(II)V

    goto/16 :goto_7

    .line 939
    :pswitch_8d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->f(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->e()V

    goto/16 :goto_7

    .line 942
    :pswitch_98
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;Z)Z

    .line 943
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    const v0, 0x7f0a0032

    iget-object v5, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v5}, Lcom/google/android/youtube/core/player/p;->n(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/utils/i;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/youtube/core/utils/i;->a()Z

    move-result v5

    if-nez v5, :cond_c0

    const v0, 0x7f0a0004

    move v3, v0

    move v0, v1

    :goto_b5
    iget-object v4, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v4}, Lcom/google/android/youtube/core/player/p;->f(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->a(IZ)V

    goto/16 :goto_7

    :cond_c0
    if-ne v3, v1, :cond_c5

    packed-switch v4, :pswitch_data_13c

    :cond_c5
    :pswitch_c5
    move v3, v0

    move v0, v1

    goto :goto_b5

    :pswitch_c8
    const v0, 0x7f0a0034

    move v3, v0

    move v0, v1

    goto :goto_b5

    :pswitch_ce
    const v0, 0x7f0a0035

    move v3, v0

    move v0, v1

    goto :goto_b5

    :pswitch_d4
    const v0, 0x7f0a0036

    move v3, v0

    move v0, v2

    goto :goto_b5

    .line 946
    :pswitch_da
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->f(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->f()V

    goto/16 :goto_7

    .line 950
    :pswitch_e5
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->i(Lcom/google/android/youtube/core/player/p;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 951
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->f(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->c()V

    goto/16 :goto_7

    .line 961
    :pswitch_f8
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_104

    :goto_ff
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/p;->c(Lcom/google/android/youtube/core/player/p;Z)V

    goto/16 :goto_14

    :cond_104
    move v1, v2

    goto :goto_ff

    .line 965
    :cond_106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_152

    goto/16 :goto_14

    .line 967
    :pswitch_10d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->l(Lcom/google/android/youtube/core/player/p;)V

    goto/16 :goto_14

    .line 917
    :pswitch_data_114
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_49
        :pswitch_49
        :pswitch_5b
        :pswitch_da
        :pswitch_e5
        :pswitch_8d
        :pswitch_98
        :pswitch_7
        :pswitch_e5
    .end packed-switch

    .line 957
    :pswitch_data_12c
    .packed-switch 0x4
        :pswitch_f8
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_f8
        :pswitch_f8
    .end packed-switch

    .line 943
    :pswitch_data_13c
    .packed-switch -0x3f2
        :pswitch_d4
        :pswitch_c5
        :pswitch_c5
        :pswitch_c5
        :pswitch_c5
        :pswitch_ce
        :pswitch_ce
        :pswitch_c8
        :pswitch_c8
    .end packed-switch

    .line 965
    :pswitch_data_152
    .packed-switch 0x8
        :pswitch_10d
    .end packed-switch
.end method

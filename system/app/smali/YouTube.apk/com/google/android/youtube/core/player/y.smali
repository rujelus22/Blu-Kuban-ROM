.class final Lcom/google/android/youtube/core/player/y;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

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

    .line 1108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_178

    .line 1158
    :cond_7
    :goto_7
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->m(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->q(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 1159
    :cond_17
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_194

    .line 1178
    :goto_1c
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->s(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/ap;->a(Landroid/os/Message;)Z

    .line 1179
    return-void

    .line 1110
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/Director;Z)Z

    .line 1111
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setPlaying()V

    .line 1112
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->h(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1113
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->h(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ThumbnailOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/ThumbnailOverlay;->a()V

    .line 1115
    :cond_45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->i(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1116
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director;Z)Z

    .line 1117
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->j(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1118
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->k(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/e;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/Director;->f(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/e;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 1119
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/Director;->c(Lcom/google/android/youtube/core/player/Director;Z)Z

    goto :goto_7

    .line 1125
    :pswitch_6f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->l(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1126
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->d()V

    goto :goto_7

    .line 1130
    :pswitch_81
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setTimes(III)V

    .line 1131
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->m(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->n(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1132
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->n(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/a;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v4, v0}, Lcom/google/android/youtube/core/player/a;->a(II)V

    goto/16 :goto_7

    .line 1136
    :pswitch_bb
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->e()V

    goto/16 :goto_7

    .line 1139
    :pswitch_c6
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setLoading()V

    goto/16 :goto_7

    .line 1142
    :pswitch_d1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->b()V

    goto/16 :goto_7

    .line 1145
    :pswitch_dc
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->l(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1146
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->g(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setPlaying()V

    goto/16 :goto_7

    .line 1150
    :pswitch_ef
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->o(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->p(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/model/t;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream;->isHD()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1151
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 1152
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->h()V

    .line 1153
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->d(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/z;

    goto/16 :goto_7

    .line 1163
    :pswitch_114
    iget-object v3, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_121

    move v0, v1

    :goto_11c
    invoke-static {v3, v0}, Lcom/google/android/youtube/core/player/Director;->d(Lcom/google/android/youtube/core/player/Director;Z)V

    goto/16 :goto_1c

    :cond_121
    move v0, v2

    goto :goto_11c

    .line 1167
    :cond_123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a4

    goto/16 :goto_1c

    .line 1173
    :pswitch_12a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->r(Lcom/google/android/youtube/core/player/Director;)V

    goto/16 :goto_1c

    .line 1169
    :pswitch_131
    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/Director;Z)Z

    .line 1170
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    const v0, 0x7f0b003f

    iget-object v5, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v5}, Lcom/google/android/youtube/core/player/Director;->t(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/utils/k;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/youtube/core/utils/k;->a()Z

    move-result v5

    if-nez v5, :cond_164

    const v0, 0x7f0b0008

    :cond_14c
    :goto_14c
    new-instance v2, Lcom/google/android/youtube/core/player/DirectorException;

    sget-object v3, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->PLAYER_ERROR:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v4}, Lcom/google/android/youtube/core/player/Director;->e(Lcom/google/android/youtube/core/player/Director;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/youtube/core/player/DirectorException;-><init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/y;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0, v2, v1}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/player/DirectorException;Z)V

    goto/16 :goto_1c

    :cond_164
    if-ne v3, v1, :cond_14c

    packed-switch v4, :pswitch_data_1ac

    :pswitch_169
    goto :goto_14c

    :pswitch_16a
    const v0, 0x7f0b0043

    move v1, v2

    goto :goto_14c

    :pswitch_16f
    const v0, 0x7f0b0041

    goto :goto_14c

    :pswitch_173
    const v0, 0x7f0b0042

    goto :goto_14c

    .line 1108
    nop

    :pswitch_data_178
    .packed-switch 0x2
        :pswitch_26
        :pswitch_6f
        :pswitch_6f
        :pswitch_81
        :pswitch_c6
        :pswitch_dc
        :pswitch_bb
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_d1
        :pswitch_ef
    .end packed-switch

    .line 1159
    :pswitch_data_194
    .packed-switch 0x4
        :pswitch_114
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_114
        :pswitch_114
    .end packed-switch

    .line 1167
    :pswitch_data_1a4
    .packed-switch 0x8
        :pswitch_12a
        :pswitch_131
    .end packed-switch

    .line 1170
    :pswitch_data_1ac
    .packed-switch -0x3f2
        :pswitch_16a
        :pswitch_169
        :pswitch_169
        :pswitch_169
        :pswitch_169
        :pswitch_173
        :pswitch_173
        :pswitch_16f
        :pswitch_16f
    .end packed-switch
.end method

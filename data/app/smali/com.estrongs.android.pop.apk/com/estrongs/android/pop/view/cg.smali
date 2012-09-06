.class Lcom/estrongs/android/pop/view/cg;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/cg;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 15

    const/4 v4, 0x4

    const/4 v3, 0x2

    const v12, 0x30002

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_c

    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_702

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_702

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/d/o;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->e()I

    move-result v6

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->f()I

    move-result v7

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->a()J

    move-result-wide v8

    packed-switch v7, :pswitch_data_960

    :pswitch_33
    goto :goto_a

    :pswitch_34
    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V

    if-ne v6, v12, :cond_1e2

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kuaipan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->p()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v2, Lcom/estrongs/android/pop/view/KuaipanGuide;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "client"

    const-string v2, "kuaipan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "input_type"

    const-string v2, "path"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "imgpath"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/sdcard/.estrongs/cache/es1.png"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "/sdcard/.estrongs/cache/es2.png"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "/sdcard/.estrongs/cache/es3.png"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_99
    .catchall {:try_start_c .. :try_end_99} :catchall_9b

    goto/16 :goto_a

    :catchall_9b
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_9e
    :try_start_9e
    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o()Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "Playlist cancelled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    :cond_b4
    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_d1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/app/ProgressDialog;)V

    :cond_d1
    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->c()Ljava/util/Map;

    move-result-object v1

    const-string v0, "playlist"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    const-string v3, "isadd"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_139

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_139

    new-instance v4, Landroid/content/Intent;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v5, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v5, v3, [Ljava/lang/String;

    move v3, v2

    :goto_fd
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v3, v2, :cond_12d

    const-string v0, "playlist"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isadd"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090221

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    :cond_12d
    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_fd

    :cond_139
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0902b3

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    :pswitch_14e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;I)V

    goto/16 :goto_a

    :pswitch_163
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;I)V

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_188

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ff;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    move v2, v1

    :cond_188
    if-ne v6, v12, :cond_199

    if-eqz v2, :cond_199

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    :cond_199
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v0

    if-eqz v0, :cond_1a3

    if-eqz v2, :cond_a

    :cond_1a3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_a

    :pswitch_1ae
    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_984

    :pswitch_1b5
    move v4, v2

    :pswitch_1b6
    if-eqz v4, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ff;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    goto/16 :goto_a

    :cond_1d0
    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-eq v1, v4, :cond_a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->f(Z)V

    goto/16 :goto_a

    :cond_1e2
    const v1, 0x30005

    if-ne v6, v1, :cond_1f2

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->i()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_1f2
    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->h()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_230

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f090026

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZJ)I

    goto/16 :goto_a

    :cond_230
    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_216

    :pswitch_235
    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v8, v9}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZJ)I

    move-result v2

    if-ne v2, v3, :cond_287

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_275

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    sget-object v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/c;->t(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_275

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "file://"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_275
    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v7, 0x7f09009b

    invoke-virtual {v4, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    :cond_287
    if-eq v6, v12, :cond_2f4

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-wide/16 v5, -0x64

    cmp-long v1, v8, v5

    if-nez v1, :cond_2dc

    const v1, 0x7f09001d

    :goto_2a9
    invoke-virtual {v4, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e0

    const-string v1, ""

    :goto_2b9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/fd;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/fd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/estrongs/android/pop/view/fd;->b(Ljava/lang/String;Z)V

    goto/16 :goto_a

    :cond_2dc
    const v1, 0x7f090025

    goto :goto_2a9

    :cond_2e0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " :"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b9

    :cond_2f4
    if-ne v2, v1, :cond_383

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32d

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/c;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32d

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_32d
    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v6, -0x64

    cmp-long v1, v8, v6

    if-nez v1, :cond_3eb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v6, 0x7f09001c

    invoke-virtual {v4, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/pop/c;->M()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_378
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    :cond_383
    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_395

    invoke-static {v5}, Lcom/estrongs/android/pop/a/f;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d3

    invoke-static {v5}, Lcom/estrongs/android/pop/a/f;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d3

    :cond_395
    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d3

    invoke-static {v5}, Lcom/estrongs/android/pop/a/f;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d3

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v1

    if-nez v1, :cond_3d3

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.packageinstaller"

    const-string v3, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3d3
    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/fd;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/fd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/estrongs/android/pop/view/fd;->a(Ljava/lang/String;Z)V

    goto/16 :goto_a

    :cond_3eb
    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f090024

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_378

    :pswitch_3f5
    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v8, v9}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZJ)I

    move-result v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->d()Ljava/lang/String;

    move-result-object v4

    if-ne v2, v3, :cond_451

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40e

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_451

    :cond_40e
    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    sget-object v7, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/estrongs/android/pop/c;->t(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_451

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_MOUNTED"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "file://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v7, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v8, 0x7f09009b

    invoke-virtual {v7, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    :cond_451
    if-eq v6, v12, :cond_4b4

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4a0

    const-string v1, ""

    :goto_47d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/fd;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/fd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/estrongs/android/pop/view/fd;->b(Ljava/lang/String;Z)V

    goto/16 :goto_a

    :cond_4a0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " :"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_47d

    :cond_4b4
    if-ne v2, v1, :cond_51c

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c2

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51c

    :cond_4c2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    :cond_51c
    if-eqz v4, :cond_53d

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53d

    invoke-static {v5}, Lcom/estrongs/android/pop/a/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_530

    invoke-static {v5}, Lcom/estrongs/android/pop/a/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53d

    :cond_530
    invoke-static {}, Lcom/estrongs/android/pop/a/a;->a()Lcom/estrongs/android/pop/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/pop/a/a;->c(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :cond_53d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/fd;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/fd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lcom/estrongs/android/pop/view/fd;->a(Ljava/lang/String;Z)V

    goto/16 :goto_a

    :pswitch_551
    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m()Z

    move-result v2

    if-eqz v2, :cond_562

    if-ne v6, v12, :cond_562

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v4, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_562
    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v8, v9}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZJ)I

    move-result v2

    if-ne v2, v3, :cond_5b4

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    sget-object v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/c;->t(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5a2
    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v7, 0x7f09009b

    invoke-virtual {v4, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    :cond_5b4
    if-eq v6, v12, :cond_601

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->h()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5ed

    const-string v0, ""

    :goto_5e0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_5ed
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5e0

    :cond_601
    if-ne v2, v1, :cond_663

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_663

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_663

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f09002a

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    :cond_663
    if-eqz v5, :cond_a

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/estrongs/android/pop/a/a;->a()Lcom/estrongs/android/pop/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/estrongs/android/pop/a/a;->c(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_67a
    const v1, 0x30004

    if-ne v6, v1, :cond_693

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_693
    if-ne v6, v12, :cond_6a0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/util/Map;)V

    goto/16 :goto_a

    :cond_6a0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_6b4
    if-ne v6, v12, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_6bd
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Z)Z

    goto/16 :goto_a

    :pswitch_6c5
    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V

    const v1, 0x30004

    if-ne v6, v1, :cond_6e1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090114

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_6e1
    if-ne v6, v12, :cond_6ee

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/o;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/util/Map;)V

    goto/16 :goto_a

    :cond_6ee
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090113

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_702
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_718

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090220

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_718
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_865

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_865

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/util/ak;

    iget-object v5, v0, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v6

    const/4 v5, -0x1

    packed-switch v6, :pswitch_data_9a2

    :pswitch_72e
    move v2, v5

    :goto_72f
    :pswitch_72f
    const/4 v1, -0x1

    if-eq v2, v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Z

    if-nez v1, :cond_7e4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D:Z

    if-nez v1, :cond_744

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F:Z

    if-eqz v1, :cond_7e4

    :cond_744
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0901a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005e

    new-instance v3, Lcom/estrongs/android/pop/view/ch;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/view/ch;-><init>(Lcom/estrongs/android/pop/view/cg;Landroid/os/Message;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/view/ci;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/ci;-><init>(Lcom/estrongs/android/pop/view/cg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030030

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f070146

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f070140

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070148

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070143

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/cj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/cj;-><init>(Lcom/estrongs/android/pop/view/cg;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_a

    :pswitch_7d8
    move v2, v1

    goto/16 :goto_72f

    :pswitch_7db
    move v2, v3

    goto/16 :goto_72f

    :pswitch_7de
    const/4 v2, 0x3

    goto/16 :goto_72f

    :pswitch_7e1
    move v2, v4

    goto/16 :goto_72f

    :cond_7e4
    iget-boolean v1, v0, Lcom/estrongs/android/util/ak;->b:Z

    if-eqz v1, :cond_856

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w:Z

    if-eqz v1, :cond_7f9

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k()V

    :cond_7f9
    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-eq v1, v2, :cond_80e

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_80e
    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/ff;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_849

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v1

    aget-object v1, v1, v2

    iget-object v0, v0, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/ff;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    aget-object v0, v0, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    goto/16 :goto_a

    :cond_849
    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/estrongs/android/util/ak;->b:Z

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;Z)V

    goto/16 :goto_a

    :cond_856
    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v1

    aget-object v1, v1, v2

    iget-object v0, v0, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/ff;->k(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_865
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_872

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(I)Z

    goto/16 :goto_a

    :cond_872
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_87d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    goto/16 :goto_a

    :cond_87d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_89b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)[Lcom/estrongs/android/pop/view/ff;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ff;->e()V

    goto/16 :goto_a

    :cond_89b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_915

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/pop/c;->b(J)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/hr;

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/estrongs/android/pop/view/hr;->a:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/estrongs/android/pop/view/hr;->b:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o:I
    :try_end_8c7
    .catchall {:try_start_9e .. :try_end_8c7} :catchall_9b

    :try_start_8c7
    iget-object v1, v0, Lcom/estrongs/android/pop/view/hr;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8cc
    .catchall {:try_start_8c7 .. :try_end_8cc} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_8c7 .. :try_end_8cc} :catch_8f4

    move-result v1

    :goto_8cd
    if-ge v3, v1, :cond_a

    :try_start_8cf
    new-instance v3, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v4, Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "status"

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "market"

    iget-object v4, v0, Lcom/estrongs/android/pop/view/hr;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_8e5
    iget-object v1, v0, Lcom/estrongs/android/pop/view/hr;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_8f7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    :catch_8f4
    move-exception v1

    move v1, v2

    goto :goto_8cd

    :cond_8f7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "url_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/estrongs/android/pop/view/hr;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8e5

    :cond_915
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_93f

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "baidu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_932

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/os/Handler;

    move-result-object v0

    const-string v1, "http://update.estrongs.com/up?id=100000"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Landroid/os/Handler;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_932
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/os/Handler;

    move-result-object v0

    const-string v1, "http://update.estrongs.com/up?id=1"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Landroid/os/Handler;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_93f
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_95e
    .catchall {:try_start_8cf .. :try_end_95e} :catchall_9b

    goto/16 :goto_a

    :pswitch_data_960
    .packed-switch 0x10001
        :pswitch_34
        :pswitch_33
        :pswitch_551
        :pswitch_3f5
        :pswitch_235
        :pswitch_33
        :pswitch_33
        :pswitch_67a
        :pswitch_33
        :pswitch_6b4
        :pswitch_6bd
        :pswitch_6c5
        :pswitch_14e
        :pswitch_163
        :pswitch_1ae
        :pswitch_9e
    .end packed-switch

    :pswitch_data_984
    .packed-switch 0x1
        :pswitch_1b6
        :pswitch_1b6
        :pswitch_1b5
        :pswitch_1b6
        :pswitch_1b6
        :pswitch_1b5
        :pswitch_1b5
        :pswitch_1b5
        :pswitch_1b5
        :pswitch_1b5
        :pswitch_1b5
        :pswitch_1b6
        :pswitch_1b6
    .end packed-switch

    :pswitch_data_9a2
    .packed-switch 0x0
        :pswitch_72f
        :pswitch_7d8
        :pswitch_7db
        :pswitch_7de
        :pswitch_7e1
        :pswitch_7db
        :pswitch_72e
        :pswitch_72e
        :pswitch_72e
        :pswitch_72e
        :pswitch_72e
        :pswitch_72e
        :pswitch_7db
        :pswitch_7db
    .end packed-switch
.end method

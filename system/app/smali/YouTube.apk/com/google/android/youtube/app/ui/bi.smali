.class final Lcom/google/android/youtube/app/ui/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/ui/m;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bd;)V
    .registers 2
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 575
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v2, v3, :cond_1e

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-ne v2, v3, :cond_5d

    :cond_1e
    move v2, v1

    .line 577
    :goto_1f
    if-eqz v2, :cond_74

    .line 578
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-eq v2, v3, :cond_3d

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->t()Lcom/google/android/youtube/app/remote/al;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/youtube/app/remote/al;->c:Z

    if-eqz v2, :cond_3e

    :cond_3d
    move v0, v1

    .line 580
    :cond_3e
    if-eqz v0, :cond_5f

    .line 581
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->k(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "RemoteRetryOnError"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bd;->f(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Ljava/lang/String;)V

    .line 609
    :goto_5c
    return-void

    :cond_5d
    move v2, v0

    .line 575
    goto :goto_1f

    .line 584
    :cond_5f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->k(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "RemoteDisconnectOnFatalError"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->c()V

    goto :goto_5c

    .line 588
    :cond_74
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v1, v2, :cond_91

    .line 589
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 591
    :cond_91
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bd;->f(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bd;->f(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    .line 592
    :cond_b1
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/bd;->a(Ljava/lang/String;)V

    .line 595
    :cond_c0
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v1

    .line 596
    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-eq v1, v2, :cond_d6

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNSTARTED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-eq v1, v2, :cond_d6

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->BUFFERING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-ne v1, v2, :cond_f9

    .line 599
    :cond_d6
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bd;->l(Lcom/google/android/youtube/app/ui/bd;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 600
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->f()V

    .line 601
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/ui/bd;Z)Z

    goto/16 :goto_5c

    .line 603
    :cond_ee
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->c()V

    goto/16 :goto_5c

    .line 606
    :cond_f9
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bi;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bd;->a(Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V

    goto/16 :goto_5c
.end method

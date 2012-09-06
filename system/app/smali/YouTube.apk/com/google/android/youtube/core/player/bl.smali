.class final Lcom/google/android/youtube/core/player/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/google/android/youtube/core/player/al;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/bi;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/bi;)V
    .registers 2
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/bi;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/bl;-><init>(Lcom/google/android/youtube/core/player/bi;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 702
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 703
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 704
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->g(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 705
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/bi;->g(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;Lcom/google/android/youtube/core/model/Stream;)V

    .line 706
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->b(Lcom/google/android/youtube/core/player/bi;Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;

    .line 708
    :cond_22
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 711
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 712
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 717
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 718
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->h()V

    .line 719
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 720
    return-void
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x64

    .line 760
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/bi;->m(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/bp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/player/bp;->c(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 761
    const/16 v2, 0x5a

    if-le p2, v2, :cond_19

    if-eq v1, p2, :cond_18

    if-ne v1, v0, :cond_19

    :cond_18
    move p2, v0

    .line 764
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->m(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/bp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bp;->c(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 765
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 774
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 776
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->m(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bp;->b()V

    .line 777
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->m(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/bp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bp;->a(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 778
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->m(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/bp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bp;->b(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 779
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    const/16 v2, 0x64

    invoke-static {v1, v0, v2, v0}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;III)V

    .line 780
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/player/bi;->g(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 781
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;I)V

    .line 782
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 785
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->n(Lcom/google/android/youtube/core/player/bi;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 786
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->c(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 787
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bi;->h(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "MediaPlayer error during prepare [what="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", extra="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 795
    :goto_36
    if-ne p2, v1, :cond_bd

    invoke-static {}, Lcom/google/android/youtube/core/player/bi;->j()Ljava/util/Set;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    move v0, v1

    .line 798
    :goto_47
    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->o(Lcom/google/android/youtube/core/player/bi;)I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_d9

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Retrying MediaPlayer error [retry="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/bi;->p(Lcom/google/android/youtube/core/player/bi;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", max=3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bi;->i(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 801
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->q(Lcom/google/android/youtube/core/player/bi;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 802
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/bi;->r(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/bi;->b(Lcom/google/android/youtube/core/model/Stream;)V

    .line 818
    :goto_8e
    return v1

    .line 790
    :cond_8f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bi;->c(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 791
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->h(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "MediaPlayer error during playback [what="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", extra="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto/16 :goto_36

    :cond_bd
    move v0, v2

    .line 795
    goto :goto_47

    .line 804
    :cond_bf
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/bi;->r(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/bi;->m(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/bp;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/player/bp;->a(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/model/Stream;I)V

    goto :goto_8e

    .line 807
    :cond_d9
    const-string v0, "Reporting MediaPlayer error"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bi;->e(Lcom/google/android/youtube/core/player/bi;Z)V

    .line 811
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bi;->c(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 812
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bi;->h(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 813
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bi;->d(Lcom/google/android/youtube/core/player/bi;I)I

    .line 815
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->g()V

    .line 816
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, p2, p3}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;II)V

    goto :goto_8e
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "media player info "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 823
    sparse-switch p2, :sswitch_data_54

    .line 835
    :goto_27
    return v2

    .line 825
    :sswitch_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Buffering data from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/bi;->r(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 826
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->d(Lcom/google/android/youtube/core/player/bi;Z)V

    goto :goto_27

    .line 829
    :sswitch_46
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bi;->d(Lcom/google/android/youtube/core/player/bi;Z)V

    goto :goto_27

    .line 832
    :sswitch_4c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;I)V

    goto :goto_27

    .line 823
    :sswitch_data_54
    .sparse-switch
        0x2bd -> :sswitch_28
        0x2be -> :sswitch_46
        0x385 -> :sswitch_4c
    .end sparse-switch
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 723
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 724
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bi;->b(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 725
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->h(Lcom/google/android/youtube/core/player/bi;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->i(Lcom/google/android/youtube/core/player/bi;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 726
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/player/bi;I)V

    .line 728
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->c(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 729
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->d(Lcom/google/android/youtube/core/player/bi;Z)V

    .line 732
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->e(Lcom/google/android/youtube/core/player/bi;Z)V

    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->j(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->a()V

    .line 735
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->e()V

    .line 736
    return-void
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/bi;->m(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/bp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/player/bp;->a(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->c(Lcom/google/android/youtube/core/player/bi;I)V

    .line 771
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 739
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 740
    if-lez p2, :cond_7

    if-gtz p3, :cond_8

    .line 756
    :cond_7
    :goto_7
    return-void

    .line 743
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->k(Lcom/google/android/youtube/core/player/bi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_39

    .line 744
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->j(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/youtube/core/player/PlayerView;->setVideoSize(II)V

    .line 752
    :goto_25
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->l(Lcom/google/android/youtube/core/player/bi;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 753
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/bi;->f(Lcom/google/android/youtube/core/player/bi;Z)Z

    .line 754
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->e()V

    goto :goto_7

    .line 746
    :cond_39
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->j(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/player/bm;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/youtube/core/player/bm;-><init>(Lcom/google/android/youtube/core/player/bl;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/PlayerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_25
.end method

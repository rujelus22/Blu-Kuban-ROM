.class final Lcom/google/android/youtube/core/player/at;
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
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/aq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/aq;)V
    .registers 3
    .parameter

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/player/at;-><init>(Lcom/google/android/youtube/core/player/aq;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/player/aq;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x64

    .line 709
    iget-object v1, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/aq;->l(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/ax;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ax;->c(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 710
    const/16 v2, 0x5a

    if-le p2, v2, :cond_19

    if-eq v1, p2, :cond_18

    if-ne v1, v0, :cond_19

    :cond_18
    move p2, v0

    .line 713
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->l(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/ax;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ax;->c(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 714
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 722
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 724
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->l(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/ax;->b()V

    .line 725
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->l(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/ax;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ax;->a(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 726
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->l(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/ax;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ax;->b(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 727
    iget-object v1, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    const/16 v2, 0x64

    invoke-static {v1, v0, v2, v0}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;III)V

    .line 728
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/player/aq;->g(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 729
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;I)V

    .line 730
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->m(Lcom/google/android/youtube/core/player/aq;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 734
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->c(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 735
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/aq;->h(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer error during prepare [what="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 743
    :goto_3b
    if-ne p2, v1, :cond_cd

    invoke-static {}, Lcom/google/android/youtube/core/player/aq;->i()Ljava/util/Set;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    move v0, v1

    .line 746
    :goto_4c
    if-nez v0, :cond_ea

    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->n(Lcom/google/android/youtube/core/player/aq;)I

    move-result v0

    if-ge v0, v4, :cond_ea

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrying MediaPlayer error [retry="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/aq;->o(Lcom/google/android/youtube/core/player/aq;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", max="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/aq;->i(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 749
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->p(Lcom/google/android/youtube/core/player/aq;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 750
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/aq;->q(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/aq;->b(Lcom/google/android/youtube/core/model/Stream;)V

    .line 766
    :goto_9a
    return v1

    .line 738
    :cond_9b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/aq;->c(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 739
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->h(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer error during playback [what="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    goto/16 :goto_3b

    :cond_cd
    move v0, v2

    .line 743
    goto/16 :goto_4c

    .line 752
    :cond_d0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/aq;->q(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/aq;->l(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/ax;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/player/ax;->a(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/model/Stream;I)V

    goto :goto_9a

    .line 755
    :cond_ea
    const-string v0, "Reporting MediaPlayer error"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/aq;->e(Lcom/google/android/youtube/core/player/aq;Z)V

    .line 759
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/aq;->c(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 760
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/aq;->h(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 761
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/aq;->c(Lcom/google/android/youtube/core/player/aq;I)I

    .line 763
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->f()V

    .line 764
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, p2, p3}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;II)V

    goto :goto_9a
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media player info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 771
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_4d

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffering data from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/aq;->q(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 773
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->d(Lcom/google/android/youtube/core/player/aq;Z)V

    .line 775
    :cond_4d
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_56

    .line 776
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/aq;->d(Lcom/google/android/youtube/core/player/aq;Z)V

    .line 778
    :cond_56
    return v2
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 674
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 675
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/aq;->b(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 676
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->h(Lcom/google/android/youtube/core/player/aq;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->i(Lcom/google/android/youtube/core/player/aq;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 677
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;I)V

    .line 679
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->c(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 680
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->d(Lcom/google/android/youtube/core/player/aq;Z)V

    .line 683
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->e(Lcom/google/android/youtube/core/player/aq;Z)V

    .line 685
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->d()V

    .line 686
    return-void
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 719
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 689
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 690
    if-lez p2, :cond_67

    move v0, v1

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video width must be positive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 691
    if-lez p3, :cond_21

    move v2, v1

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video height must be positive "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_69

    .line 693
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->j(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/youtube/core/player/PlayerView;->a(II)V

    .line 701
    :goto_54
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->k(Lcom/google/android/youtube/core/player/aq;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 702
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->f(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 703
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->d()V

    .line 705
    :cond_66
    return-void

    :cond_67
    move v0, v2

    .line 690
    goto :goto_8

    .line 695
    :cond_69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->j(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/core/player/au;

    invoke-direct {v2, p0, p2, p3}, Lcom/google/android/youtube/core/player/au;-><init>(Lcom/google/android/youtube/core/player/at;II)V

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/PlayerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_54
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 662
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 663
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter

    .prologue
    .line 653
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 654
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 655
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->g(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 656
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/aq;->g(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;Lcom/google/android/youtube/core/model/Stream;)V

    .line 657
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->b(Lcom/google/android/youtube/core/player/aq;Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;

    .line 659
    :cond_22
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter

    .prologue
    .line 668
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 669
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->g()V

    .line 670
    iget-object v0, p0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;Z)Z

    .line 671
    return-void
.end method

.class final Lcom/google/android/youtube/core/player/ax;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/aq;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/aq;)V
    .registers 3
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 799
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ax;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 800
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ax;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 801
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ax;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 802
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 812
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->p(Lcom/google/android/youtube/core/player/aq;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 813
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 814
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 816
    :cond_13
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->p(Lcom/google/android/youtube/core/player/aq;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 820
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 822
    :cond_e
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 826
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 829
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_68

    .line 860
    :goto_7
    return v0

    .line 831
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->r(Lcom/google/android/youtube/core/player/aq;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 832
    if-eqz v0, :cond_54

    .line 834
    :try_start_16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    .line 835
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 836
    iget-object v3, p0, Lcom/google/android/youtube/core/player/ax;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 837
    if-lez v2, :cond_43

    .line 838
    iget-object v3, p0, Lcom/google/android/youtube/core/player/ax;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-le v2, v3, :cond_33

    .line 840
    iget-object v3, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/aq;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/player/aq;->c(Lcom/google/android/youtube/core/player/aq;I)I

    .line 842
    :cond_33
    iget-object v3, p0, Lcom/google/android/youtube/core/player/ax;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 843
    iget-object v3, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/aq;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/ax;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v3, v2, v4, v0}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/player/aq;III)V

    .line 845
    :cond_43
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_4b} :catch_4d

    :goto_4b
    move v0, v1

    .line 853
    goto :goto_7

    .line 846
    :catch_4d
    move-exception v0

    .line 848
    const-string v2, "Error calling mediaPlayer"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b

    .line 851
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/ax;->b()V

    goto :goto_4b

    .line 856
    :pswitch_58
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 857
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    move v0, v1

    .line 858
    goto :goto_7

    .line 829
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_8
        :pswitch_58
    .end packed-switch
.end method

.method public final run()V
    .registers 2

    .prologue
    .line 806
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 807
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ax;->e:Landroid/os/Handler;

    .line 808
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 809
    return-void
.end method

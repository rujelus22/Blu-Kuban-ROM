.class Lcom/google/googlenav/prefetch/android/i;
.super Ljava/lang/Object;

# interfaces
.implements Lx/aw;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/google/googlenav/prefetch/android/h;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;ILcom/google/googlenav/prefetch/android/h;)V
    .registers 5

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/i;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/googlenav/prefetch/android/i;->c:I

    iput p2, p0, Lcom/google/googlenav/prefetch/android/i;->b:I

    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/i;->i:Lcom/google/googlenav/prefetch/android/h;

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->d:I

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->e:I

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->f:I

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->g:I

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->h:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lt/af;ILt/ae;)V
    .registers 8

    monitor-enter p0

    packed-switch p2, :pswitch_data_102

    :goto_4
    if-nez p3, :cond_f1

    :try_start_6
    iget v0, p0, Lcom/google/googlenav/prefetch/android/i;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->g:I

    :goto_c
    if-nez p2, :cond_15

    invoke-static {}, Lcom/google/googlenav/prefetch/android/a;->c()Lcom/google/googlenav/prefetch/android/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/a;->a(Lt/af;)V

    :cond_15
    iget v0, p0, Lcom/google/googlenav/prefetch/android/i;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->b:I

    iget v0, p0, Lcom/google/googlenav/prefetch/android/i;->b:I
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_de

    if-nez v0, :cond_d4

    const-wide/16 v0, 0x3e8

    :try_start_21
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_de
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_fe

    :goto_24
    const/4 v0, 0x6

    :try_start_25
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/i;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/i;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/i;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/i;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/i;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/i;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/i;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/i;->i:Lcom/google/googlenav/prefetch/android/h;

    invoke-virtual {v2}, Lcom/google/googlenav/prefetch/android/h;->d()LaR/e;

    move-result-object v2

    invoke-virtual {v2}, LaR/e;->c()Lcom/google/googlenav/prefetch/android/g;

    move-result-object v2

    const-string v3, "a"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/i;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/i;->i:Lcom/google/googlenav/prefetch/android/h;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/PrefetcherService;ILjava/lang/Object;)V
    :try_end_d4
    .catchall {:try_start_25 .. :try_end_d4} :catchall_de

    :cond_d4
    monitor-exit p0

    return-void

    :pswitch_d6
    :try_start_d6
    iget v0, p0, Lcom/google/googlenav/prefetch/android/i;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->d:I
    :try_end_dc
    .catchall {:try_start_d6 .. :try_end_dc} :catchall_de

    goto/16 :goto_4

    :catchall_de
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_e1
    :try_start_e1
    iget v0, p0, Lcom/google/googlenav/prefetch/android/i;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->e:I

    goto/16 :goto_4

    :pswitch_e9
    iget v0, p0, Lcom/google/googlenav/prefetch/android/i;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->f:I

    goto/16 :goto_4

    :cond_f1
    iget v0, p0, Lcom/google/googlenav/prefetch/android/i;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/i;->h:I

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/i;->i:Lcom/google/googlenav/prefetch/android/h;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/h;->c()V
    :try_end_fc
    .catchall {:try_start_e1 .. :try_end_fc} :catchall_de

    goto/16 :goto_c

    :catch_fe
    move-exception v0

    goto/16 :goto_24

    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_e1
        :pswitch_e9
    .end packed-switch
.end method

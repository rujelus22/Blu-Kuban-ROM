.class LC/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LC/L;

.field final synthetic b:LC/I;


# direct methods
.method constructor <init>(LC/I;LC/L;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, LC/J;->b:LC/I;

    iput-object p2, p0, LC/J;->a:LC/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 90
    iget-object v0, p0, LC/J;->b:LC/I;

    invoke-static {v0}, LC/I;->a(LC/I;)Ljava/lang/Runnable;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_7
    iget-object v0, p0, LC/J;->b:LC/I;

    invoke-static {v0}, LC/I;->b(LC/I;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 92
    monitor-exit v1

    .line 111
    :goto_10
    return-void

    .line 94
    :cond_11
    const/4 v0, 0x0

    .line 95
    sget-object v2, LC/K;->a:[I

    iget-object v3, p0, LC/J;->a:LC/L;

    invoke-virtual {v3}, LC/L;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5a

    .line 108
    :goto_1f
    iget-object v2, p0, LC/J;->b:LC/I;

    invoke-static {v2, v0}, LC/I;->a(LC/I;LC/z;)V

    .line 109
    iget-object v0, p0, LC/J;->b:LC/I;

    invoke-static {v0}, LC/I;->g(LC/I;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, LC/J;->b:LC/I;

    invoke-static {v2}, LC/I;->a(LC/I;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    monitor-exit v1

    goto :goto_10

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v0

    .line 97
    :pswitch_3a
    :try_start_3a
    iget-object v0, p0, LC/J;->b:LC/I;

    invoke-static {v0}, LC/I;->c(LC/I;)LC/z;

    move-result-object v0

    goto :goto_1f

    .line 100
    :pswitch_41
    iget-object v0, p0, LC/J;->b:LC/I;

    invoke-static {v0}, LC/I;->d(LC/I;)V

    .line 101
    iget-object v0, p0, LC/J;->b:LC/I;

    invoke-static {v0}, LC/I;->e(LC/I;)LC/z;

    move-result-object v0

    goto :goto_1f

    .line 104
    :pswitch_4d
    iget-object v0, p0, LC/J;->b:LC/I;

    invoke-static {v0}, LC/I;->f(LC/I;)V

    .line 105
    iget-object v0, p0, LC/J;->b:LC/I;

    invoke-static {v0}, LC/I;->e(LC/I;)LC/z;
    :try_end_57
    .catchall {:try_start_3a .. :try_end_57} :catchall_37

    move-result-object v0

    goto :goto_1f

    .line 95
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_41
        :pswitch_4d
    .end packed-switch
.end method

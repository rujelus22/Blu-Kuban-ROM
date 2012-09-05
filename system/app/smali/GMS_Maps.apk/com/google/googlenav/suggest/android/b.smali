.class public Lcom/google/googlenav/suggest/android/b;
.super Lcom/google/googlenav/provider/e;

# interfaces
.implements LaV/p;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private volatile b:LaV/r;

.field private c:Landroid/os/Bundle;

.field private d:LaV/r;

.field private e:Z

.field private final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/suggest/android/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/provider/e;-><init>()V

    new-instance v0, Lcom/google/googlenav/suggest/android/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/c;-><init>(Lcom/google/googlenav/suggest/android/b;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/b;->f:Ljava/lang/Runnable;

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {v0, p0}, LaV/n;->a(LaV/p;)V

    return-void
.end method

.method private declared-synchronized a(LaV/q;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, LaV/q;->e()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    move-result v0

    packed-switch v0, :pswitch_data_14

    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return-object v0

    :pswitch_b
    :try_start_b
    const-string v0, "google.recentplace:"

    goto :goto_9

    :pswitch_e
    const-string v0, "google.star:"
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_9

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_14
    .packed-switch 0x5
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private a(LaV/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/b;->b:LaV/r;

    return-void
.end method


# virtual methods
.method public a(I)LaV/q;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/b;->b:LaV/r;

    invoke-virtual {v0, p1}, LaV/r;->a(I)LaV/q;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(LaV/r;Z)V
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    :try_start_5
    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/b;->e:Z

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/b;->d:LaV/r;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/b;->onChange(Z)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {v0, p1}, LaV/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[I)V
    .registers 4

    if-eqz p2, :cond_a

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LaV/n;->a(Ljava/lang/String;[I)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/googlenav/suggest/android/b;->a(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/googlenav/suggest/android/b;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/b;->b:LaV/r;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/b;->b:LaV/r;

    invoke-virtual {v0}, LaV/r;->d()I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result v0

    goto :goto_6

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/b;->c:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/b;->c:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/b;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLong(I)J
    .registers 4

    if-nez p1, :cond_6

    iget v0, p0, Lcom/google/googlenav/suggest/android/b;->mPos:I

    int-to-long v0, v0

    return-wide v0

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getString(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/googlenav/suggest/android/b;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    iget v1, p0, Lcom/google/googlenav/suggest/android/b;->mPos:I

    iget-object v2, p0, Lcom/google/googlenav/suggest/android/b;->b:LaV/r;

    invoke-virtual {v2}, LaV/r;->d()I

    move-result v2

    if-ge v1, v2, :cond_1a

    iget v1, p0, Lcom/google/googlenav/suggest/android/b;->mPos:I

    invoke-virtual {p0, v1}, Lcom/google/googlenav/suggest/android/b;->a(I)LaV/q;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_3c

    move-result-object v1

    packed-switch p1, :pswitch_data_40

    :cond_1a
    :goto_1a
    :pswitch_1a
    monitor-exit p0

    return-object v0

    :pswitch_1c
    :try_start_1c
    invoke-virtual {v1}, LaV/q;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :pswitch_21
    invoke-virtual {v1}, LaV/q;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :pswitch_26
    invoke-virtual {v1}, LaV/q;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :pswitch_2b
    iget v0, p0, Lcom/google/googlenav/suggest/android/b;->mPos:I

    invoke-virtual {v1, v0}, LaV/q;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :pswitch_32
    invoke-direct {p0, v1}, Lcom/google/googlenav/suggest/android/b;->a(LaV/q;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :pswitch_37
    invoke-virtual {v1}, LaV/q;->j()Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_3c

    move-result-object v0

    goto :goto_1a

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_1a
        :pswitch_32
        :pswitch_37
    .end packed-switch
.end method

.method public requery()Z
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/b;->d:LaV/r;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/b;->b:LaV/r;

    invoke-virtual {v0, v1}, LaV/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/b;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/googlenav/suggest/android/b;->e:Z

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/b;->d:LaV/r;

    invoke-direct {p0, v0}, Lcom/google/googlenav/suggest/android/b;->a(LaV/r;)V

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/b;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_progress"

    iget-boolean v2, p0, Lcom/google/googlenav/suggest/android/b;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0}, Lcom/google/googlenav/provider/e;->requery()Z

    move-result v0

    goto :goto_19
.end method

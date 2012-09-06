.class Lcom/google/android/maps/driveabout/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/T;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/a;

.field private final b:Li/U;

.field private c:Li/a;

.field private final d:Lcom/google/android/maps/driveabout/app/d;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/a;Li/U;Lcom/google/android/maps/driveabout/app/d;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/g;->b:Li/U;

    .line 145
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/g;->d:Lcom/google/android/maps/driveabout/app/d;

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/g;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/g;)V
    .registers 1
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/g;->d()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/g;)Li/a;
    .registers 2
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    return-object v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/g;->a(Z)Z

    .line 195
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/g;->f()V

    .line 196
    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/g;)Lcom/google/android/maps/driveabout/app/d;
    .registers 2
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->d:Lcom/google/android/maps/driveabout/app/d;

    return-object v0
.end method

.method private declared-synchronized e()V
    .registers 5

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/app/h;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/h;-><init>(Lcom/google/android/maps/driveabout/app/g;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    .line 210
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 211
    monitor-exit p0

    return-void

    .line 199
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    if-nez v0, :cond_a

    .line 317
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->j(Lcom/google/android/maps/driveabout/app/a;)V

    .line 339
    :goto_9
    return-void

    .line 320
    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    invoke-virtual {v0}, Li/a;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->c()Z

    move-result v0

    if-nez v0, :cond_27

    .line 321
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->a()V

    .line 323
    :cond_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    new-instance v1, Lcom/google/android/maps/driveabout/app/i;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/i;-><init>(Lcom/google/android/maps/driveabout/app/g;)V

    invoke-virtual {v0, v1}, Li/a;->a(Li/b;)V

    goto :goto_9
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 2

    .prologue
    .line 186
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/g;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 187
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/g;->f()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_11

    .line 191
    :goto_b
    monitor-exit p0

    return-void

    .line 189
    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/g;->e()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_b

    .line 186
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Li/U;Li/a;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 344
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    .line 346
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/g;->d()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 348
    :cond_16
    monitor-exit p0

    return-void

    .line 343
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/g;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 164
    if-nez p1, :cond_4

    .line 182
    :cond_3
    :goto_3
    return v0

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/g;->b:Li/U;

    invoke-virtual {v1}, Li/U;->d()Lo/j;

    move-result-object v1

    .line 168
    iget-object v2, p1, Lcom/google/android/maps/driveabout/app/g;->b:Li/U;

    invoke-virtual {v2}, Li/U;->d()Lo/j;

    move-result-object v2

    .line 169
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lo/j;->a()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-virtual {v1}, Lo/j;->a()I

    move-result v3

    invoke-virtual {v2}, Lo/j;->a()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Lo/j;->h()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lo/j;->h()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lo/j;->e()Lo/I;

    move-result-object v1

    invoke-virtual {v1}, Lo/I;->a()Ln/Q;

    move-result-object v1

    invoke-virtual {v2}, Lo/j;->e()Lo/I;

    move-result-object v2

    invoke-virtual {v2}, Lo/I;->a()Ln/Q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    const/4 v0, 0x0

    goto :goto_3
.end method

.method a(Z)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    if-eqz v2, :cond_7

    .line 312
    :goto_6
    return v0

    .line 267
    :cond_7
    if-nez p1, :cond_f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    if-eqz v2, :cond_f

    move v0, v1

    .line 268
    goto :goto_6

    .line 271
    :cond_f
    new-instance v3, Li/K;

    invoke-direct {v3}, Li/K;-><init>()V

    .line 273
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/a;->d()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 274
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/a;->c(Lcom/google/android/maps/driveabout/app/a;)Li/c;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/g;->b:Li/U;

    invoke-interface {v2, v4}, Li/c;->a(Li/U;)Li/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Li/K;->a(Li/a;)V

    .line 276
    :cond_2b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/a;->e()Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 277
    const/4 v2, 0x0

    .line 279
    const-string v4, "a"

    invoke-static {v4}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 281
    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/app/a;->d(Lcom/google/android/maps/driveabout/app/a;)Li/S;

    move-result-object v4

    if-eqz v4, :cond_be

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/app/a;->e(Lcom/google/android/maps/driveabout/app/a;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 282
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/a;->d(Lcom/google/android/maps/driveabout/app/a;)Li/S;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/g;->b:Li/U;

    invoke-interface {v2, v4}, Li/S;->a(Li/U;)Li/a;

    move-result-object v2

    .line 286
    if-nez v2, :cond_66

    if-nez p1, :cond_66

    .line 287
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->d(Lcom/google/android/maps/driveabout/app/a;)Li/S;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->b:Li/U;

    invoke-interface {v0, v2, p0}, Li/S;->a(Li/U;Li/T;)V

    move v0, v1

    .line 288
    goto :goto_6

    :cond_66
    move-object v1, v2

    .line 292
    :goto_67
    if-nez v1, :cond_82

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/a;->f(Lcom/google/android/maps/driveabout/app/a;)Li/S;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 293
    const-string v1, "f"

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/a;->f(Lcom/google/android/maps/driveabout/app/a;)Li/S;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->b:Li/U;

    invoke-interface {v1, v2}, Li/S;->a(Li/U;)Li/a;

    move-result-object v1

    .line 297
    :cond_82
    if-nez v1, :cond_95

    .line 298
    const-string v1, "y"

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/a;->g(Lcom/google/android/maps/driveabout/app/a;)Li/S;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->b:Li/U;

    invoke-interface {v1, v2}, Li/S;->a(Li/U;)Li/a;

    move-result-object v1

    .line 304
    :cond_95
    if-eqz v1, :cond_9f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/a;->h(Lcom/google/android/maps/driveabout/app/a;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 305
    :cond_9f
    const-string v2, "c"

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/a;->i(Lcom/google/android/maps/driveabout/app/a;)Li/c;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/g;->b:Li/U;

    invoke-interface {v2, v4}, Li/c;->a(Li/U;)Li/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Li/K;->a(Li/a;)V

    .line 309
    :cond_b3
    invoke-virtual {v3, v1}, Li/K;->a(Li/a;)V

    .line 311
    :cond_b6
    invoke-virtual {v3}, Li/K;->a()Li/a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    goto/16 :goto_6

    :cond_be
    move-object v1, v2

    goto :goto_67
.end method

.method b()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    invoke-virtual {v0}, Li/a;->a()V

    .line 222
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 223
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->b()V

    .line 225
    :cond_1e
    return-void
.end method

.method c()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    if-eqz v0, :cond_26

    .line 232
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    invoke-virtual {v0}, Li/a;->c()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->c()Z

    move-result v0

    if-nez v0, :cond_21

    .line 233
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->a()V

    .line 235
    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Li/a;

    invoke-virtual {v0}, Li/a;->b()V

    .line 237
    :cond_26
    return-void
.end method

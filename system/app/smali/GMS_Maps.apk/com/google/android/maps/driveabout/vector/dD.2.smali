.class public Lcom/google/android/maps/driveabout/vector/dD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/android/maps/driveabout/vector/dg;

.field public static final b:[Lcom/google/android/maps/driveabout/vector/dg;

.field public static volatile c:I

.field private static d:Z

.field private static e:Z

.field private static volatile f:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/dg;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->b:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->d:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->g:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->h:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->i:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dD;->a:[Lcom/google/android/maps/driveabout/vector/dg;

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/dg;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->c:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->d:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->f:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->e:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->j:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->l:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->k:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->m:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->n:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->o:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->p:Lcom/google/android/maps/driveabout/vector/dg;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dD;->b:[Lcom/google/android/maps/driveabout/vector/dg;

    .line 83
    sput-boolean v3, Lcom/google/android/maps/driveabout/vector/dD;->d:Z

    .line 87
    const/16 v0, 0xa

    sput v0, Lcom/google/android/maps/driveabout/vector/dD;->c:I

    .line 94
    const/4 v0, -0x1

    sput v0, Lcom/google/android/maps/driveabout/vector/dD;->f:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lac/h;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 459
    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    .line 461
    new-instance v3, Lac/j;

    invoke-direct {v3}, Lac/j;-><init>()V

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/K;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lac/j;->a(Ljava/lang/String;)Lac/j;

    move-result-object v3

    invoke-static {}, Lcom/google/googlenav/common/Config;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lac/j;->b(Ljava/lang/String;)Lac/j;

    move-result-object v3

    invoke-virtual {v3, p2}, Lac/j;->c(Ljava/lang/String;)Lac/j;

    move-result-object v3

    invoke-static {}, Lcom/google/googlenav/common/Config;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lac/j;->d(Ljava/lang/String;)Lac/j;

    move-result-object v3

    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v4

    invoke-virtual {v3, v4}, Lac/j;->a(Z)Lac/j;

    move-result-object v3

    invoke-virtual {v3, v1}, Lac/j;->b(Z)Lac/j;

    move-result-object v3

    invoke-static {p0}, Lh/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lac/j;->e(Ljava/lang/String;)Lac/j;

    move-result-object v3

    invoke-virtual {v0, p0}, Lcom/google/googlenav/capabilities/a;->a(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lac/j;->c(Z)Lac/j;

    move-result-object v3

    invoke-virtual {v0, p0}, Lcom/google/googlenav/capabilities/a;->b(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lac/j;->e(Z)Lac/j;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/capabilities/a;->b()Z

    move-result v0

    if-nez v0, :cond_b1

    move v0, v1

    :goto_56
    invoke-virtual {v3, v0}, Lac/j;->d(Z)Lac/j;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v3}, Lac/j;->a(I)Lac/j;

    move-result-object v3

    .line 480
    const-string v0, "DriveAbout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 481
    if-eqz v4, :cond_b3

    const-string v0, "GMM"

    :goto_72
    invoke-virtual {v3, v0}, Lac/j;->f(Ljava/lang/String;)Lac/j;

    .line 493
    invoke-virtual {v3, v1}, Lac/j;->b(I)Lac/j;

    .line 496
    invoke-virtual {v3, v1}, Lac/j;->f(Z)Lac/j;

    .line 499
    invoke-virtual {v3}, Lac/j;->a()Lac/h;

    move-result-object v0

    .line 503
    const-string v1, "GMM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 504
    if-nez v1, :cond_89

    if-eqz v4, :cond_9f

    .line 505
    :cond_89
    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Lac/j;->b(I)Lac/j;

    move-result-object v1

    invoke-virtual {v1, v2}, Lac/j;->f(Z)Lac/j;

    move-result-object v1

    const-string v2, "DriveAbout"

    invoke-virtual {v1, v2}, Lac/j;->f(Ljava/lang/String;)Lac/j;

    move-result-object v1

    invoke-virtual {v1}, Lac/j;->b()Lac/p;

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Lac/h;->a(Lac/p;)V

    .line 514
    :cond_9f
    new-instance v1, Lcom/google/android/maps/driveabout/vector/dF;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/dF;-><init>(Lcom/google/android/maps/driveabout/vector/dE;)V

    invoke-virtual {v0, v1}, Lac/h;->a(Lac/q;)V

    .line 519
    const-string v1, "1"

    .line 520
    const-string v1, "2"

    .line 521
    const-string v1, "3"

    .line 522
    const-string v1, "3"

    .line 527
    return-object v0

    :cond_b1
    move v0, v2

    .line 461
    goto :goto_56

    :cond_b3
    move-object v0, p1

    .line 481
    goto :goto_72
.end method

.method public static declared-synchronized a(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/Context;)Lr/aH;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 283
    const-class v1, Lcom/google/android/maps/driveabout/vector/dD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/dD;->d:Z

    if-nez v0, :cond_12

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "VectorGlobalState.initialize() must be called first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 283
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 286
    :cond_12
    const/4 v0, 0x1

    :try_start_13
    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/dg;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p1}, Lh/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, p1}, Lcom/google/android/maps/driveabout/vector/dD;->a([Lcom/google/android/maps/driveabout/vector/dg;Lac/p;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V

    .line 291
    invoke-static {p0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/dg;Ljava/lang/String;ILaT/o;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    const-class v2, Lcom/google/android/maps/driveabout/vector/dD;

    monitor-enter v2

    :try_start_3
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/dD;->d:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c6

    if-eqz v0, :cond_9

    .line 216
    :goto_7
    monitor-exit v2

    return-void

    .line 122
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 123
    const-string v0, "VectorGlobalState.initialize"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 125
    invoke-static {p0}, Lcom/google/googlenav/common/Config;->getOrCreateInstance(Landroid/content/Context;)Lcom/google/googlenav/common/Config;

    .line 127
    invoke-static {}, Lh/a;->a()V

    .line 128
    invoke-static {p4}, LaT/k;->a(LaT/o;)V

    .line 130
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/vector/dD;->f:I

    .line 134
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/dD;->b(Landroid/content/Context;)V

    .line 137
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 138
    if-nez v0, :cond_53

    .line 144
    invoke-static {}, Lh/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/google/android/maps/driveabout/vector/dD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lac/h;

    move-result-object v0

    .line 146
    const-string v1, "DriveAbout"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 147
    if-eqz v1, :cond_46

    .line 148
    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v3, v4}, Lac/h;->a(J)V

    .line 152
    :cond_46
    if-eqz v1, :cond_48

    .line 159
    :cond_48
    invoke-static {v0}, Lcom/google/googlenav/clientparam/f;->a(Lac/h;)V

    .line 161
    new-instance v1, Lt/j;

    invoke-direct {v1, v0}, Lt/j;-><init>(Lac/h;)V

    invoke-virtual {v0, v1}, Lac/h;->a(Lac/q;)V

    :cond_53
    move-object v1, v0

    .line 163
    invoke-virtual {v1}, Lac/h;->v()V

    .line 167
    invoke-static {p0}, Lh/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 168
    invoke-static {v1, v3}, Lr/af;->a(Lac/h;Ljava/io/File;)Lr/af;

    .line 171
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_61
    .catchall {:try_start_9 .. :try_end_61} :catchall_c6

    move-result-object v4

    .line 173
    const/4 v0, -0x1

    if-eq p3, v0, :cond_70

    .line 175
    :try_start_65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lr/aG;->a(Ljava/io/InputStream;)V
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_c6
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_70} :catch_c9

    .line 181
    :cond_70
    :goto_70
    :try_start_70
    const-string v0, "DriveAbout"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 182
    const-string v5, "GMM"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 183
    if-nez v0, :cond_80

    if-eqz v5, :cond_d0

    .line 186
    :cond_80
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dD;->b:[Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0, v1, v4, v3, p0}, Lcom/google/android/maps/driveabout/vector/dD;->a([Lcom/google/android/maps/driveabout/vector/dg;Lac/p;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V

    .line 187
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dD;->a:[Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {}, Lac/h;->b()Lac/p;

    move-result-object v5

    invoke-static {v0, v5, v4, v3, p0}, Lcom/google/android/maps/driveabout/vector/dD;->a([Lcom/google/android/maps/driveabout/vector/dg;Lac/p;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V

    .line 196
    :cond_8e
    :goto_8e
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->b()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 197
    new-instance v0, LR/a;

    invoke-direct {v0}, LR/a;-><init>()V

    invoke-static {v1, v3, v4, v0}, Lr/Q;->a(Lac/h;Ljava/io/File;Ljava/util/Locale;Lcom/google/googlenav/common/a;)Lr/Q;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_a5

    .line 201
    invoke-virtual {v0}, Lr/Q;->d()V

    .line 202
    invoke-static {v0}, Ll/q;->a(Lr/Q;)Ll/q;

    .line 206
    :cond_a5
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 208
    new-instance v0, LA/a;

    invoke-direct {v0, p0}, LA/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LA/f;->a(LA/f;)V

    .line 211
    :cond_b3
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/dD;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/dD;->e:Z

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 214
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/dD;->d:Z

    .line 215
    const-string v0, "VectorGlobalState.initialize"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_70 .. :try_end_c4} :catchall_c6

    goto/16 :goto_7

    .line 118
    :catchall_c6
    move-exception v0

    monitor-exit v2

    throw v0

    .line 176
    :catch_c9
    move-exception v0

    .line 177
    :try_start_ca
    const-string v5, "Could not load encryption key"

    invoke-static {v5, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_70

    .line 191
    :cond_d0
    if-eqz p1, :cond_8e

    .line 192
    invoke-static {p1, v1, v4, v3, p0}, Lcom/google/android/maps/driveabout/vector/dD;->a([Lcom/google/android/maps/driveabout/vector/dg;Lac/p;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V
    :try_end_d5
    .catchall {:try_start_ca .. :try_end_d5} :catchall_c6

    goto :goto_8e
.end method

.method public static declared-synchronized a(Ljava/util/Locale;)V
    .registers 5
    .parameter

    .prologue
    .line 437
    const-class v1, Lcom/google/android/maps/driveabout/vector/dD;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dg;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dg;

    .line 438
    invoke-static {v0}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 439
    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    invoke-interface {v0, p0}, Lr/aH;->a(Ljava/util/Locale;)V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_25

    goto :goto_b

    .line 437
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    .line 443
    :cond_28
    monitor-exit v1

    return-void
.end method

.method public static a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 270
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 272
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    check-cast v0, Lr/aP;

    invoke-virtual {v0, p0}, Lr/aP;->a(Z)V

    .line 275
    :cond_13
    return-void
.end method

.method private static declared-synchronized a([Lcom/google/android/maps/driveabout/vector/dg;Lac/p;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    const-class v8, Lcom/google/android/maps/driveabout/vector/dD;

    monitor-enter v8

    :try_start_3
    const-string v0, "GMM"

    invoke-interface {p1}, Lac/p;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 302
    if-eqz v5, :cond_12

    .line 307
    const/4 v0, 0x1

    sput v0, Lcom/google/android/maps/driveabout/vector/dD;->c:I

    .line 309
    :cond_12
    array-length v9, p0

    const/4 v0, 0x0

    move v7, v0

    :goto_15
    if-ge v7, v9, :cond_38

    aget-object v0, p0, v7

    .line 311
    invoke-static {v0}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 309
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_15

    :cond_23
    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move v6, v5

    .line 316
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/dg;->a(Lac/p;Landroid/content/Context;Ljava/util/Locale;Ljava/io/File;ZZ)Lr/aH;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_1f

    .line 319
    invoke-interface {v1}, Lr/aH;->h()V

    .line 320
    invoke-static {v0, v1}, Lr/aJ;->a(Lcom/google/android/maps/driveabout/vector/dg;Lr/aH;)V
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_35

    goto :goto_1f

    .line 301
    :catchall_35
    move-exception v0

    monitor-exit v8

    throw v0

    .line 323
    :cond_38
    monitor-exit v8

    return-void
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 247
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/dD;->e:Z

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 8
    .parameter

    .prologue
    const-wide/high16 v5, 0x3fd0

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 226
    int-to-float v0, v0

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 229
    iget v1, v2, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v3, v1

    cmpl-double v1, v3, v5

    if-gtz v1, :cond_2f

    iget v1, v2, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v3, v1

    cmpl-double v1, v3, v5

    if-lez v1, :cond_45

    :cond_2f
    move v1, v0

    .line 239
    :goto_30
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float v1, v3, v1

    .line 240
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float v0, v2, v0

    .line 242
    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    const/high16 v1, 0x41c8

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4a

    const/4 v0, 0x1

    :goto_44
    return v0

    .line 234
    :cond_45
    iget v1, v2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 235
    iget v0, v2, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_30

    .line 242
    :cond_4a
    const/4 v0, 0x0

    goto :goto_44
.end method

.method private static b(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 549
    invoke-static {p0}, Lh/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 550
    invoke-static {p0}, Lh/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 551
    invoke-static {p0}, Lh/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 552
    return-void
.end method

.method public static b()Z
    .registers 1

    .prologue
    .line 261
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->u()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized c()V
    .registers 6

    .prologue
    .line 329
    const-class v2, Lcom/google/android/maps/driveabout/vector/dD;

    monitor-enter v2

    :try_start_3
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/dD;->d:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4c

    if-nez v0, :cond_9

    .line 359
    :goto_7
    monitor-exit v2

    return-void

    .line 334
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dg;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dg;

    .line 335
    invoke-static {v0}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_4c

    move-result v1

    if-eqz v1, :cond_11

    .line 337
    :try_start_23
    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v1

    invoke-interface {v1}, Lr/aH;->i()V

    .line 338
    invoke-static {v0}, Lr/aJ;->a(Lcom/google/android/maps/driveabout/vector/dg;)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_11

    .line 339
    :catch_2e
    move-exception v1

    .line 340
    :try_start_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not stop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " tile store"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_4c

    goto :goto_11

    .line 329
    :catchall_4c
    move-exception v0

    monitor-exit v2

    throw v0

    .line 345
    :cond_4f
    :try_start_4f
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 346
    invoke-static {}, Lr/Q;->c()V

    .line 348
    :cond_58
    invoke-static {}, Lr/af;->e()V

    .line 350
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_67

    .line 352
    invoke-virtual {v0}, Lac/h;->u()V

    .line 353
    invoke-static {}, Lac/h;->c()V

    .line 356
    :cond_67
    invoke-static {}, LaT/k;->d()V

    .line 358
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/dD;->d:Z
    :try_end_6d
    .catchall {:try_start_4f .. :try_end_6d} :catchall_4c

    goto :goto_7
.end method

.method public static declared-synchronized d()V
    .registers 4

    .prologue
    .line 365
    const-class v1, Lcom/google/android/maps/driveabout/vector/dD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/dD;->d:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    if-nez v0, :cond_9

    .line 380
    :cond_7
    :goto_7
    monitor-exit v1

    return-void

    .line 369
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dg;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dg;

    .line 370
    invoke-static {v0}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 371
    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    invoke-interface {v0}, Lr/aH;->j()V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_2b

    goto :goto_11

    .line 365
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 374
    :cond_2e
    :try_start_2e
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 375
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lr/af;->a(Z)V

    .line 377
    :cond_3c
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 378
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v0

    invoke-virtual {v0}, Lr/Q;->f()V
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_2b

    goto :goto_7
.end method

.method public static e()I
    .registers 1

    .prologue
    .line 387
    sget v0, Lcom/google/android/maps/driveabout/vector/dD;->c:I

    return v0
.end method

.method public static declared-synchronized f()V
    .registers 4

    .prologue
    .line 394
    const-class v1, Lcom/google/android/maps/driveabout/vector/dD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/dD;->d:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    if-nez v0, :cond_9

    .line 408
    :cond_7
    :goto_7
    monitor-exit v1

    return-void

    .line 398
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dg;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dg;

    .line 399
    invoke-static {v0}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 400
    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    invoke-interface {v0}, Lr/aH;->c()V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_2b

    goto :goto_11

    .line 394
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 404
    :cond_2e
    :try_start_2e
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lr/af;->a(Z)V

    .line 405
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 406
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v0

    invoke-virtual {v0}, Lr/Q;->g()V
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_2b

    goto :goto_7
.end method

.method public static declared-synchronized g()J
    .registers 7

    .prologue
    .line 414
    const-class v3, Lcom/google/android/maps/driveabout/vector/dD;

    monitor-enter v3

    const-wide/16 v0, 0x0

    .line 415
    :try_start_5
    sget-boolean v2, Lcom/google/android/maps/driveabout/vector/dD;->d:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_4c

    if-nez v2, :cond_b

    .line 429
    :goto_9
    monitor-exit v3

    return-wide v0

    .line 419
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dg;->e()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dg;

    .line 420
    invoke-static {v0}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 421
    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    invoke-interface {v0}, Lr/aH;->f()J

    move-result-wide v5

    add-long v0, v1, v5

    :goto_30
    move-wide v1, v0

    goto :goto_14

    .line 425
    :cond_32
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 426
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v0

    invoke-virtual {v0}, Lr/Q;->h()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 428
    :cond_41
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v0

    invoke-virtual {v0}, Lr/af;->c()J
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_4c

    move-result-wide v4

    add-long v0, v1, v4

    .line 429
    goto :goto_9

    .line 414
    :catchall_4c
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4f
    move-wide v0, v1

    goto :goto_30
.end method

.method public static h()I
    .registers 1

    .prologue
    .line 536
    sget v0, Lcom/google/android/maps/driveabout/vector/dD;->f:I

    return v0
.end method

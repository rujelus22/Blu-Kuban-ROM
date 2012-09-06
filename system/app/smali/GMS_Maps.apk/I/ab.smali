.class public Li/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Li/aa;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Li/ab;->a:Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Li/ab;->b:Li/aa;

    .line 66
    return-void
.end method

.method private declared-synchronized a(ILi/ad;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x2

    .line 109
    monitor-enter p0

    .line 114
    if-nez p1, :cond_8b

    .line 118
    :try_start_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 122
    iget-object v0, p0, Li/ab;->b:Li/aa;

    invoke-interface {v0}, Li/aa;->b()Ljava/util/Locale;

    move-result-object v0

    .line 124
    iget-object v2, p0, Li/ab;->b:Li/aa;

    invoke-interface {v2, v0}, Li/aa;->b(Ljava/util/Locale;)I

    move-result v2

    .line 129
    invoke-static {v6, v0}, Li/ae;->b(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v7

    .line 133
    invoke-static {v6, v0}, Li/ae;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v8

    .line 141
    if-eq v2, v3, :cond_26

    if-eqz v7, :cond_26

    if-nez v8, :cond_2c

    .line 156
    :cond_26
    iget-object v2, p0, Li/ab;->b:Li/aa;

    invoke-interface {v2, v6}, Li/aa;->a(Ljava/util/Locale;)I

    move-result v2

    .line 162
    :cond_2c
    if-eq v2, v3, :cond_30

    if-ne v2, v9, :cond_63

    :cond_30
    move v3, v5

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 171
    :goto_34
    const/4 v4, 0x1

    iput-boolean v4, p0, Li/ab;->c:Z

    .line 173
    if-nez v1, :cond_77

    const-string v1, "?"

    .line 175
    :goto_3b
    const-string v4, "E"

    if-nez v0, :cond_41

    const-string v0, "?"

    :cond_41
    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "L"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "S"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz p2, :cond_5e

    .line 184
    if-eqz v3, :cond_7c

    .line 185
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Li/ad;->a(I)V

    .line 194
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_61
    .catchall {:try_start_8 .. :try_end_61} :catchall_83

    .line 195
    monitor-exit p0

    return-void

    .line 166
    :cond_63
    :try_start_63
    iget-object v1, p0, Li/ab;->b:Li/aa;

    invoke-interface {v1}, Li/aa;->d()Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v3, p0, Li/ab;->b:Li/aa;

    invoke-static {v1}, Li/Z;->a(Ljava/lang/String;)Li/Z;

    move-result-object v5

    invoke-interface {v3, v5}, Li/aa;->a(Li/Z;)V

    move v3, v4

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_34

    .line 173
    :cond_77
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 186
    :cond_7c
    if-ne v2, v9, :cond_86

    .line 187
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Li/ad;->a(I)V
    :try_end_82
    .catchall {:try_start_63 .. :try_end_82} :catchall_83

    goto :goto_5e

    .line 109
    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :cond_86
    const/4 v0, 0x2

    :try_start_87
    invoke-interface {p2, v0}, Li/ad;->a(I)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_83

    goto :goto_5e

    :cond_8b
    move-object v0, v1

    move v2, v3

    move v3, v5

    goto :goto_34
.end method

.method static synthetic a(Li/ab;ILi/ad;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Li/ab;->a(ILi/ad;)V

    return-void
.end method

.method private declared-synchronized a(Li/ad;Li/aa;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Li/ab;->b:Li/aa;

    .line 87
    iget-object v0, p0, Li/ab;->b:Li/aa;

    new-instance v1, Li/ac;

    invoke-direct {v1, p0, p1}, Li/ac;-><init>(Li/ab;Li/ad;)V

    invoke-interface {v0, v1}, Li/aa;->a(Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 93
    monitor-exit p0

    return-void

    .line 86
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Li/aa;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Li/ab;->b:Li/aa;

    return-object v0
.end method

.method public a(Li/ad;)V
    .registers 4
    .parameter

    .prologue
    .line 75
    new-instance v0, Li/ae;

    iget-object v1, p0, Li/ab;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Li/ae;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Li/ab;->a(Li/ad;Li/aa;)V

    .line 76
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 235
    iget-boolean v1, p0, Li/ab;->c:Z

    if-nez v1, :cond_10

    .line 236
    monitor-enter p0

    .line 238
    :try_start_6
    iget-boolean v1, p0, Li/ab;->c:Z

    if-nez v1, :cond_f

    .line 239
    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1f
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_f} :catch_15

    .line 245
    :cond_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_1f

    .line 247
    :cond_10
    iget-boolean v1, p0, Li/ab;->c:Z

    if-nez v1, :cond_22

    .line 250
    :goto_14
    return-object v0

    .line 241
    :catch_15
    move-exception v1

    .line 242
    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 243
    monitor-exit p0

    goto :goto_14

    .line 245
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    throw v0

    .line 250
    :cond_22
    iget-object v0, p0, Li/ab;->b:Li/aa;

    invoke-interface {v0}, Li/aa;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

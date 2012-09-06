.class public abstract Lcom/google/android/youtube/core/transfer/TransferService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/s;
.implements Lcom/google/android/youtube/core/transfer/w;


# instance fields
.field private a:Lcom/google/android/youtube/core/transfer/j;

.field private b:Ljava/util/Map;

.field private c:Z

.field private d:Lcom/google/android/youtube/core/transfer/l;

.field private e:Ljava/util/Set;

.field private f:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

.field private g:I

.field private h:Lcom/google/android/youtube/core/transfer/e;

.field private i:Landroid/content/SharedPreferences;

.field private j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 415
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/TransferService;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:I

    return p1
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransfersExecutor;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/youtube/core/transfer/i;)Lcom/google/android/youtube/core/utils/v;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const-string v0, "context may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/google/android/youtube/core/transfer/h;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/core/transfer/h;-><init>(Ljava/lang/Class;Lcom/google/android/youtube/core/transfer/i;)V

    .line 99
    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/utils/v;->a(Landroid/content/Context;)V

    .line 100
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/TransferService;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->b:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/TransferService;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->e:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/transfer/TransferService;)I
    .registers 2
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->h()V

    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->i()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->j()V

    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->b()Ljava/lang/String;

    move-result-object v1

    .line 385
    if-eqz v1, :cond_1c

    .line 386
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 391
    :cond_1c
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Z)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:I

    .line 392
    return-void
.end method

.method static synthetic h(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->k()V

    return-void
.end method

.method private i()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->c()Ljava/lang/String;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 397
    :cond_d
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(Z)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:I

    .line 398
    return-void
.end method

.method private j()V
    .registers 4

    .prologue
    const v0, 0x7fffffff

    .line 401
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->d()Ljava/lang/String;

    move-result-object v1

    .line 402
    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 404
    :cond_f
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:I

    .line 405
    return-void
.end method

.method private k()V
    .registers 4

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->e()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 410
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    const v2, 0x7fffffff

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->h:Lcom/google/android/youtube/core/transfer/e;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/e;->a(I)V

    .line 413
    :cond_18
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/youtube/core/transfer/j;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/j;->sendMessage(Landroid/os/Message;)Z

    .line 293
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/j;->sendMessage(Landroid/os/Message;)Z

    .line 269
    return-void
.end method

.method protected final a(Lcom/google/android/youtube/core/transfer/i;)Z
    .registers 4
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->e:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 216
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->c:Z

    if-eqz v0, :cond_13

    .line 217
    invoke-interface {p1}, Lcom/google/android/youtube/core/transfer/i;->f_()V

    .line 219
    :cond_13
    const/4 v0, 0x1

    .line 221
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/j;->sendMessage(Landroid/os/Message;)Z

    .line 273
    return-void
.end method

.method protected final b(Lcom/google/android/youtube/core/transfer/i;)Z
    .registers 3
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public final c(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/j;->sendMessage(Landroid/os/Message;)Z

    .line 277
    return-void
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public final d(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/j;->sendMessage(Landroid/os/Message;)Z

    .line 281
    return-void
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method public final e(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/j;->sendMessage(Landroid/os/Message;)Z

    .line 285
    return-void
.end method

.method protected final f()Ljava/util/Map;
    .registers 3

    .prologue
    .line 229
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final f(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/j;->sendMessage(Landroid/os/Message;)Z

    .line 289
    return-void
.end method

.method protected final g()Lcom/google/android/youtube/core/transfer/e;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->h:Lcom/google/android/youtube/core/transfer/e;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->d:Lcom/google/android/youtube/core/transfer/l;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 108
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 110
    new-instance v0, Lcom/google/android/youtube/core/transfer/j;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/j;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/j;

    .line 111
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, p0, v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/s;Lcom/google/android/youtube/core/transfer/w;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    .line 112
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->e:Ljava/util/Set;

    .line 113
    new-instance v0, Lcom/google/android/youtube/core/transfer/l;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/l;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->d:Lcom/google/android/youtube/core/transfer/l;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 116
    new-instance v0, Lcom/google/android/youtube/core/transfer/e;

    invoke-direct {v0}, Lcom/google/android/youtube/core/transfer/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->h:Lcom/google/android/youtube/core/transfer/e;

    .line 119
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 123
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    .line 124
    new-instance v0, Lcom/google/android/youtube/core/transfer/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/transfer/k;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;B)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 127
    :cond_7a
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->h()V

    .line 128
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->i()V

    .line 129
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->j()V

    .line 130
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->k()V

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:I

    .line 136
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_b

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 148
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b()V

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

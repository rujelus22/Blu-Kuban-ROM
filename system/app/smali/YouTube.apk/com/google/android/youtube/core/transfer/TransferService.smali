.class public abstract Lcom/google/android/youtube/core/transfer/TransferService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/n;
.implements Lcom/google/android/youtube/core/transfer/r;


# instance fields
.field private a:Lcom/google/android/youtube/core/transfer/e;

.field private b:Ljava/util/Map;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/android/youtube/core/transfer/g;

.field private f:Ljava/util/Set;

.field private g:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

.field private h:I

.field private i:Landroid/content/SharedPreferences;

.field private j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 400
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/TransferService;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->h:I

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
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/youtube/core/transfer/d;)Lcom/google/android/youtube/core/utils/n;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const-string v0, "context may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/google/android/youtube/core/transfer/c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/core/transfer/c;-><init>(Ljava/lang/Class;Lcom/google/android/youtube/core/transfer/d;)V

    .line 99
    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/utils/n;->a(Landroid/content/Context;)V

    .line 100
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/TransferService;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->b:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/TransferService;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/TransferService;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/transfer/TransferService;)I
    .registers 2
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->h:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/transfer/TransferService;)Z
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->d:Z

    return v0
.end method

.method private final f()V
    .registers 4

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->b()Ljava/lang/String;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_1c

    .line 379
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 384
    :cond_1c
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Z)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->h:I

    .line 385
    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->f()V

    return-void
.end method

.method private final g()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->c()Ljava/lang/String;

    move-result-object v1

    .line 389
    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 390
    :cond_d
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(Z)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->h:I

    .line 391
    return-void
.end method

.method static synthetic g(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->g()V

    return-void
.end method

.method private final h()V
    .registers 4

    .prologue
    const v0, 0x7fffffff

    .line 394
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->d()Ljava/lang/String;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 397
    :cond_f
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->h:I

    .line 398
    return-void
.end method

.method static synthetic h(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->h()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/youtube/core/transfer/e;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/e;->sendMessage(Landroid/os/Message;)Z

    .line 283
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/e;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/e;->sendMessage(Landroid/os/Message;)Z

    .line 259
    return-void
.end method

.method protected final a(Lcom/google/android/youtube/core/transfer/d;)Z
    .registers 4
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 216
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->c:Z

    if-eqz v0, :cond_13

    .line 217
    invoke-interface {p1}, Lcom/google/android/youtube/core/transfer/d;->b()V

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
    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/e;->sendMessage(Landroid/os/Message;)Z

    .line 267
    return-void
.end method

.method protected final b(Lcom/google/android/youtube/core/transfer/d;)Z
    .registers 3
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Ljava/util/Set;

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
    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/e;->sendMessage(Landroid/os/Message;)Z

    .line 271
    return-void
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public final d(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/e;->sendMessage(Landroid/os/Message;)Z

    .line 275
    return-void
.end method

.method protected final e()Ljava/util/Map;
    .registers 3

    .prologue
    .line 229
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final e(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/google/android/youtube/core/transfer/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/e;->sendMessage(Landroid/os/Message;)Z

    .line 279
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->e:Lcom/google/android/youtube/core/transfer/g;

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
    new-instance v0, Lcom/google/android/youtube/core/transfer/e;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/e;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->a:Lcom/google/android/youtube/core/transfer/e;

    .line 111
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, p0, v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/n;Lcom/google/android/youtube/core/transfer/r;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    .line 112
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->f:Ljava/util/Set;

    .line 113
    new-instance v0, Lcom/google/android/youtube/core/transfer/g;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/g;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->e:Lcom/google/android/youtube/core/transfer/g;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 118
    :cond_44
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->C()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    .line 119
    new-instance v0, Lcom/google/android/youtube/core/transfer/f;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/f;-><init>(Lcom/google/android/youtube/core/transfer/TransferService;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->i:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 122
    :cond_5e
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->f()V

    .line 123
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->g()V

    .line 124
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->h()V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->h:I

    .line 130
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
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->g:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b()V

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 134
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService;->d:Z

    if-nez v0, :cond_1c

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.youtube.transfer_service_active"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    iput-boolean v2, p0, Lcom/google/android/youtube/core/transfer/TransferService;->d:Z

    .line 140
    :cond_1c
    return v2
.end method

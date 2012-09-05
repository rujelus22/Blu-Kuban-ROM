.class public final Lcom/google/android/youtube/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/p;


# static fields
.field private static final a:Landroid/content/IntentFilter;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/a/a/a/n;

.field private final d:Lcom/google/android/youtube/core/utils/i;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Lcom/google/android/youtube/app/g;

.field private final h:Landroid/os/Handler;

.field private final i:Landroid/os/Handler;

.field private final j:Ljava/lang/Runnable;

.field private k:Z

.field private l:Lcom/google/android/youtube/app/t;

.field private m:Lcom/google/android/youtube/app/q;

.field private n:Lcom/google/android/youtube/app/s;

.field private o:Lcom/google/android/a/e/c;

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    sput-object v0, Lcom/google/android/youtube/app/a;->a:Landroid/content/IntentFilter;

    sget-object v1, Lcom/google/android/a/c/b;->p:Lcom/google/android/a/c/b;

    invoke-virtual {v1}, Lcom/google/android/a/c/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/youtube/app/a;->a:Landroid/content/IntentFilter;

    sget-object v1, Lcom/google/android/a/c/b;->h:Lcom/google/android/a/c/b;

    invoke-virtual {v1}, Lcom/google/android/a/c/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/youtube/app/a;->a:Landroid/content/IntentFilter;

    sget-object v1, Lcom/google/android/a/c/b;->g:Lcom/google/android/a/c/b;

    invoke-virtual {v1}, Lcom/google/android/a/c/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/i;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/youtube/app/a;->q:I

    .line 69
    const-string v0, "context can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "executor can not be null"

    invoke-static {p2, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->b:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/google/android/youtube/app/a;->d:Lcom/google/android/youtube/core/utils/i;

    .line 75
    new-instance v0, Lcom/google/android/a/a/a/n;

    const-string v1, "www.youtube.com"

    const/16 v2, 0x50

    const-string v3, "/api/lounge/bc/"

    const-string v4, "androidapp"

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/a/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    new-instance v1, Lcom/google/android/youtube/app/h;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/h;-><init>(Lcom/google/android/youtube/app/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/v;)V

    .line 79
    new-instance v0, Lcom/google/android/youtube/app/g;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/g;-><init>(Lcom/google/android/youtube/app/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->g:Lcom/google/android/youtube/app/g;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->e:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->f:Ljava/util/List;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->h:Landroid/os/Handler;

    .line 84
    sget-object v0, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->i:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/google/android/youtube/app/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/b;-><init>(Lcom/google/android/youtube/app/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->j:Ljava/lang/Runnable;

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/a;)Lcom/google/android/a/a/a/n;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/s;)Lcom/google/android/youtube/app/s;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/youtube/app/a;->n:Lcom/google/android/youtube/app/s;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/youtube/app/a;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/youtube/app/a;->m:Lcom/google/android/youtube/app/q;

    sget-object v0, Lcom/google/android/youtube/app/t;->f:Lcom/google/android/youtube/app/t;

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    iget-object v0, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/a;->b(Lcom/google/android/youtube/app/t;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/t;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/t;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/app/s;)V
    .registers 4
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/e;-><init>(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method

.method private a(Lcom/google/android/youtube/app/t;)V
    .registers 4
    .parameter

    .prologue
    .line 224
    sget-object v0, Lcom/google/android/youtube/app/t;->f:Lcom/google/android/youtube/app/t;

    if-eq p1, v0, :cond_16

    const/4 v0, 0x1

    :goto_5
    const-string v1, "use toErrorState for ERROR state"

    invoke-static {v0, v1}, Lcom/google/android/a/f/d;->a(ZLjava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    .line 226
    iput-object p1, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    .line 227
    if-eq v0, p1, :cond_15

    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/a;->b(Lcom/google/android/youtube/app/t;)V

    .line 230
    :cond_15
    return-void

    .line 224
    :cond_16
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic a(Lcom/google/android/youtube/app/a;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/a;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/s;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/s;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/a;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/c;-><init>(Lcom/google/android/youtube/app/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Lcom/google/android/youtube/app/t;)V
    .registers 4
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/d;-><init>(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/youtube/app/a;->p:Ljava/lang/String;

    .line 240
    sget-object v0, Lcom/google/android/youtube/app/s;->h:Lcom/google/android/youtube/app/s;

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->n:Lcom/google/android/youtube/app/s;

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->n:Lcom/google/android/youtube/app/s;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/s;)V

    .line 242
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/youtube/app/a;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/a;)Lcom/google/android/youtube/app/g;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->g:Lcom/google/android/youtube/app/g;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/a;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/a;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/a;)Lcom/google/android/youtube/app/t;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/a;)Lcom/google/android/youtube/app/s;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->n:Lcom/google/android/youtube/app/s;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/a;)Lcom/google/android/youtube/core/utils/i;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->d:Lcom/google/android/youtube/core/utils/i;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    invoke-virtual {v0}, Lcom/google/android/a/a/a/n;->a()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/a;->o:Lcom/google/android/a/e/c;

    .line 157
    sget-object v0, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/t;)V

    .line 158
    iget-boolean v0, p0, Lcom/google/android/youtube/app/a;->k:Z

    if-eqz v0, :cond_1b

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/app/a;->g:Lcom/google/android/youtube/app/g;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/a;->k:Z

    .line 162
    :cond_1b
    return-void
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/a/a/c/d;

    invoke-direct {v0}, Lcom/google/android/a/a/c/d;-><init>()V

    .line 186
    const-string v1, "volume"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput p1, p0, Lcom/google/android/youtube/app/a;->q:I

    .line 188
    iget-object v1, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    sget-object v2, Lcom/google/android/a/a/c/c;->P:Lcom/google/android/a/a/c/c;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;)V

    .line 189
    return-void
.end method

.method public final a(Lcom/google/android/a/e/c;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 122
    const-string v0, "screenInfo can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "videoId can not be null"

    invoke-static {p2, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/a;->b(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    sget-object v1, Lcom/google/android/youtube/app/t;->c:Lcom/google/android/youtube/app/t;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/app/a;->o:Lcom/google/android/a/e/c;

    invoke-virtual {p1, v0}, Lcom/google/android/a/e/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 130
    iput-object p1, p0, Lcom/google/android/youtube/app/a;->o:Lcom/google/android/a/e/c;

    .line 131
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;)V

    .line 152
    :goto_20
    return-void

    .line 133
    :cond_21
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    invoke-virtual {v0}, Lcom/google/android/a/a/a/n;->b()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    invoke-virtual {v0}, Lcom/google/android/a/a/a/n;->c()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 134
    :cond_31
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    invoke-virtual {v0}, Lcom/google/android/a/a/a/n;->a()V

    .line 137
    :cond_36
    iput-object p1, p0, Lcom/google/android/youtube/app/a;->o:Lcom/google/android/a/e/c;

    .line 138
    sget-object v0, Lcom/google/android/youtube/app/t;->b:Lcom/google/android/youtube/app/t;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/t;)V

    .line 140
    iget-boolean v0, p0, Lcom/google/android/youtube/app/a;->k:Z

    if-nez v0, :cond_4a

    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/app/a;->g:Lcom/google/android/youtube/app/g;

    sget-object v2, Lcom/google/android/youtube/app/a;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    :cond_4a
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    new-instance v1, Lcom/google/android/a/a/c/b;

    invoke-direct {v1}, Lcom/google/android/a/a/c/b;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/a/e/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/a/a/c/b;->a(Ljava/lang/String;)Lcom/google/android/a/a/c/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/a/a/c/c;->F:Lcom/google/android/a/a/c/c;

    invoke-virtual {v1, v2}, Lcom/google/android/a/a/c/b;->a(Lcom/google/android/a/a/c/c;)Lcom/google/android/a/a/c/b;

    move-result-object v1

    new-instance v2, Lcom/google/android/a/a/c/d;

    invoke-direct {v2}, Lcom/google/android/a/a/c/d;-><init>()V

    const-string v3, "videoIds"

    invoke-virtual {v2, v3, p2}, Lcom/google/android/a/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "videoId"

    invoke-virtual {v2, v3, p2}, Lcom/google/android/a/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "currentTime"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/a/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/a/a/c/b;->a(Lcom/google/android/a/a/c/d;)Lcom/google/android/a/a/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/a/a/c/b;->a()Lcom/google/android/a/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/a;)V

    goto :goto_20
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 165
    const-string v0, "videoId can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/a;->b(Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/google/android/a/a/c/d;

    invoke-direct {v0}, Lcom/google/android/a/a/c/d;-><init>()V

    .line 170
    const-string v1, "videoId"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/a/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    sget-object v2, Lcom/google/android/a/a/c/c;->r:Lcom/google/android/a/a/c/c;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;)V

    .line 172
    const-string v1, "currentTime"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    sget-object v2, Lcom/google/android/a/a/c/c;->I:Lcom/google/android/a/a/c/c;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;)V

    .line 174
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/r;)Z
    .registers 5
    .parameter

    .prologue
    .line 100
    const-string v0, "listener can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/app/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    sget-object v1, Lcom/google/android/youtube/app/t;->e:Lcom/google/android/youtube/app/t;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/google/android/youtube/app/a;->o:Lcom/google/android/a/e/c;

    if-nez v0, :cond_27

    const-string v0, "We should reconnect, but we lost the screen"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 102
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 101
    :cond_27
    sget-object v0, Lcom/google/android/youtube/app/t;->b:Lcom/google/android/youtube/app/t;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/t;)V

    iget-boolean v0, p0, Lcom/google/android/youtube/app/a;->k:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/google/android/youtube/app/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/app/a;->g:Lcom/google/android/youtube/app/g;

    sget-object v2, Lcom/google/android/youtube/app/a;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_39
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    new-instance v1, Lcom/google/android/a/a/c/b;

    invoke-direct {v1}, Lcom/google/android/a/a/c/b;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/app/a;->o:Lcom/google/android/a/e/c;

    invoke-virtual {v2}, Lcom/google/android/a/e/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/a/a/c/b;->a(Ljava/lang/String;)Lcom/google/android/a/a/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/a/a/c/b;->a()Lcom/google/android/a/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/a;)V

    goto :goto_1b
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    sget-object v1, Lcom/google/android/a/a/c/c;->M:Lcom/google/android/a/a/c/c;

    sget-object v2, Lcom/google/android/a/a/c/d;->a:Lcom/google/android/a/a/c/d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;)V

    .line 178
    return-void
.end method

.method public final b(Lcom/google/android/youtube/app/r;)Z
    .registers 3
    .parameter

    .prologue
    .line 107
    const-string v0, "listener can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .registers 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->c:Lcom/google/android/a/a/a/n;

    sget-object v1, Lcom/google/android/a/a/c/c;->N:Lcom/google/android/a/a/c/c;

    sget-object v2, Lcom/google/android/a/a/c/d;->a:Lcom/google/android/a/a/c/d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;)V

    .line 182
    return-void
.end method

.method public final c(Lcom/google/android/youtube/app/r;)Z
    .registers 7
    .parameter

    .prologue
    .line 112
    const-string v0, "listener can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/google/android/youtube/app/a;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/google/android/youtube/app/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 116
    iget-object v1, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    sget-object v2, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    if-eq v1, v2, :cond_28

    iget-object v1, p0, Lcom/google/android/youtube/app/a;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/app/a;->j:Ljava/lang/Runnable;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    :cond_28
    return v0
.end method

.method public final d()Lcom/google/android/youtube/app/t;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->l:Lcom/google/android/youtube/app/t;

    return-object v0
.end method

.method public final e()Lcom/google/android/youtube/app/q;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->m:Lcom/google/android/youtube/app/q;

    return-object v0
.end method

.method public final f()Lcom/google/android/youtube/app/s;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->n:Lcom/google/android/youtube/app/s;

    return-object v0
.end method

.method public final g()Lcom/google/android/a/e/c;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->o:Lcom/google/android/a/e/c;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/app/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/youtube/app/a;->q:I

    return v0
.end method

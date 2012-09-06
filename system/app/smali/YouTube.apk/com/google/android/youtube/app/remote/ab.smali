.class public final Lcom/google/android/youtube/app/remote/ab;
.super Lcom/android/athome/picker/media/c;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final c:Ljava/util/List;

.field private d:I

.field private final e:Lcom/google/android/youtube/app/remote/e;

.field private final f:Lcom/google/android/youtube/app/remote/AtHomeConnection;

.field private final g:Lcom/google/android/youtube/app/remote/c;

.field private final h:Lcom/google/android/youtube/app/remote/at;

.field private final i:Lcom/google/android/youtube/app/remote/bd;

.field private final j:Lcom/google/android/youtube/app/remote/ah;

.field private final k:Lcom/google/common/collect/bj;

.field private final l:Ljava/lang/Object;

.field private final m:Lcom/google/android/youtube/app/remote/ag;

.field private final n:Lcom/google/android/youtube/app/remote/ao;

.field private final o:Lcom/google/android/youtube/core/Analytics;

.field private final p:Landroid/os/Handler;

.field private q:Lcom/google/android/youtube/app/remote/RemoteControl;

.field private r:Ljava/lang/Object;

.field private s:Lcom/google/android/youtube/app/remote/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/remote/AtHomeConnection;Lcom/google/android/youtube/app/remote/e;Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/at;Lcom/google/android/youtube/core/Analytics;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/athome/picker/media/c;-><init>()V

    .line 52
    iput v2, p0, Lcom/google/android/youtube/app/remote/ab;->d:I

    .line 77
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "atHomeConnection cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/AtHomeConnection;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->f:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    .line 80
    const-string v0, "atHomeRemoteControl cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->e:Lcom/google/android/youtube/app/remote/e;

    .line 82
    const-string v0, "youTubeTvRemoteControl cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/at;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->h:Lcom/google/android/youtube/app/remote/at;

    .line 84
    const-string v0, "youTubeTvScreensMonitor cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bd;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->i:Lcom/google/android/youtube/app/remote/bd;

    .line 86
    const-string v0, "analytics cannot be null"

    invoke-static {p6, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->o:Lcom/google/android/youtube/core/Analytics;

    .line 88
    invoke-static {p1}, Lcom/android/athome/picker/media/k;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->a:Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->a:Ljava/lang/Object;

    const v1, 0x800001

    invoke-static {v0, v1, p0}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;ILcom/android/athome/picker/media/b;)V

    .line 91
    new-instance v0, Lcom/google/android/youtube/app/remote/ad;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/app/remote/ad;-><init>(Lcom/google/android/youtube/app/remote/ab;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->g:Lcom/google/android/youtube/app/remote/c;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->c:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->a:Ljava/lang/Object;

    const v1, 0x7f0b0232

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->l:Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/google/android/youtube/app/remote/ah;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/app/remote/ah;-><init>(Lcom/google/android/youtube/app/remote/ab;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->j:Lcom/google/android/youtube/app/remote/ah;

    .line 100
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->k:Lcom/google/common/collect/bj;

    .line 101
    new-instance v0, Lcom/google/android/youtube/app/remote/ag;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/app/remote/ag;-><init>(Lcom/google/android/youtube/app/remote/ab;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->m:Lcom/google/android/youtube/app/remote/ag;

    .line 102
    new-instance v0, Lcom/google/android/youtube/app/remote/ai;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/app/remote/ai;-><init>(Lcom/google/android/youtube/app/remote/ab;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->n:Lcom/google/android/youtube/app/remote/ao;

    .line 104
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/remote/ac;

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/remote/ac;-><init>(Lcom/google/android/youtube/app/remote/ab;B)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->p:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/common/collect/bj;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->k:Lcom/google/common/collect/bj;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/ab;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p1}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_18

    invoke-static {p1, v1}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/athome/picker/media/q;->d(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    :goto_13
    return-object v0

    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_18
    const-string v0, "Can\'t find system audio route"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_13
.end method

.method private a(Lcom/google/android/youtube/app/remote/RemoteControl;Lcom/google/android/youtube/app/remote/ap;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 206
    const-string v1, ""

    .line 207
    const/4 v0, 0x0

    .line 213
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ab;->s:Lcom/google/android/youtube/app/remote/af;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ab;->e:Lcom/google/android/youtube/app/remote/e;

    if-eq p1, v2, :cond_17

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->s:Lcom/google/android/youtube/app/remote/af;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/af;->q()Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->s:Lcom/google/android/youtube/app/remote/af;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/af;->r()I

    move-result v0

    .line 217
    :cond_17
    int-to-long v2, v0

    invoke-interface {p1, p2, v1, v2, v3}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/app/remote/ap;Ljava/lang/String;J)V

    .line 218
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    .line 219
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/ag;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->m:Lcom/google/android/youtube/app/remote/ag;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->r:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized e()V
    .registers 4

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/ae;

    .line 117
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/app/remote/ae;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 116
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_1c
    monitor-exit p0

    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/RemoteControl;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->h:Lcom/google/android/youtube/app/remote/at;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/remote/ab;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/core/Analytics;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->o:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRouteUnselected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 154
    const/high16 v0, 0x80

    and-int/2addr v0, p1

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_42

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->e:Lcom/google/android/youtube/app/remote/e;

    if-ne v0, v1, :cond_45

    .line 157
    iget v0, p0, Lcom/google/android/youtube/app/remote/ab;->d:I

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_34

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->f()V

    .line 161
    :cond_34
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->o:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "AtHomeDisconnect"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 166
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->c()V

    .line 169
    iput-object v2, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    .line 171
    :cond_42
    iput-object v2, p0, Lcom/google/android/youtube/app/remote/ab;->r:Ljava/lang/Object;

    .line 172
    return-void

    .line 162
    :cond_45
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->h:Lcom/google/android/youtube/app/remote/at;

    if-ne v0, v1, :cond_3b

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->n:Lcom/google/android/youtube/app/remote/ao;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->b(Lcom/google/android/youtube/app/remote/ao;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->o:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "YouTubeTvDisconnect"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/app/remote/ae;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/youtube/app/remote/af;)V
    .registers 3
    .parameter

    .prologue
    .line 142
    const-string v0, "provider cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/af;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->s:Lcom/google/android/youtube/app/remote/af;

    .line 143
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/remote/bb;)V
    .registers 5
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->k:Lcom/google/common/collect/bj;

    invoke-interface {v0, p1}, Lcom/google/common/collect/bj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    if-nez v0, :cond_e

    .line 224
    const-string v0, "Trying to select an unknown route - will ignore"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 228
    :goto_d
    return-void

    .line 227
    :cond_e
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->a:Ljava/lang/Object;

    const v2, 0x800001

    invoke-static {v1, v2, v0}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_d
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRouteSelected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->r:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->r:Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lcom/google/android/youtube/app/remote/ab;->a(ILjava/lang/Object;)V

    .line 181
    :cond_1a
    const/high16 v0, 0x80

    and-int/2addr v0, p2

    if-eqz v0, :cond_70

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->k:Lcom/google/common/collect/bj;

    invoke-interface {v0, p3}, Lcom/google/common/collect/bj;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->k:Lcom/google/common/collect/bj;

    invoke-interface {v0}, Lcom/google/common/collect/bj;->inverse()Lcom/google/common/collect/bj;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/common/collect/bj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bb;

    .line 184
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->h:Lcom/google/android/youtube/app/remote/at;

    invoke-direct {p0, v1, v0}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/RemoteControl;Lcom/google/android/youtube/app/remote/ap;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->h:Lcom/google/android/youtube/app/remote/at;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->n:Lcom/google/android/youtube/app/remote/ao;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/ao;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->h:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->i()I

    move-result v0

    invoke-static {p3, v0}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;I)V

    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->o:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "YouTubeTvConnect"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 200
    :cond_4f
    :goto_4f
    iput-object p3, p0, Lcom/google/android/youtube/app/remote/ab;->r:Ljava/lang/Object;

    .line 201
    invoke-direct {p0}, Lcom/google/android/youtube/app/remote/ab;->e()V

    .line 202
    :goto_54
    return-void

    .line 189
    :cond_55
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->f:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->a(Ljava/lang/Object;)Lcom/google/android/youtube/app/remote/m;

    move-result-object v0

    .line 190
    if-nez v0, :cond_63

    .line 191
    const-string v0, "Cannot obtain a screen for a selected @Home route."

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_54

    .line 194
    :cond_63
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->e:Lcom/google/android/youtube/app/remote/e;

    invoke-direct {p0, v1, v0}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/RemoteControl;Lcom/google/android/youtube/app/remote/ap;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->o:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "AtHomeConnect"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_4f

    .line 197
    :cond_70
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4f

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    goto :goto_4f
.end method

.method public final b()Lcom/google/android/youtube/app/remote/RemoteControl;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->q:Lcom/google/android/youtube/app/remote/RemoteControl;

    return-object v0
.end method

.method public final declared-synchronized b(Lcom/google/android/youtube/app/remote/ae;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/android/youtube/app/remote/af;)V
    .registers 3
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->s:Lcom/google/android/youtube/app/remote/af;

    if-ne v0, p1, :cond_7

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->s:Lcom/google/android/youtube/app/remote/af;

    .line 149
    :cond_7
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/youtube/app/remote/ab;->d:I

    if-nez v0, :cond_12

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->i:Lcom/google/android/youtube/app/remote/bd;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->j:Lcom/google/android/youtube/app/remote/ah;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/bd;->a(Lcom/google/android/youtube/app/remote/ar;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->f:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->g:Lcom/google/android/youtube/app/remote/c;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->a(Lcom/google/android/youtube/app/remote/c;)V

    .line 130
    :cond_12
    iget v0, p0, Lcom/google/android/youtube/app/remote/ab;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/app/remote/ab;->d:I

    .line 131
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/youtube/app/remote/ab;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/remote/ab;->d:I

    .line 135
    iget v0, p0, Lcom/google/android/youtube/app/remote/ab;->d:I

    if-nez v0, :cond_18

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->i:Lcom/google/android/youtube/app/remote/bd;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->j:Lcom/google/android/youtube/app/remote/ah;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/bd;->b(Lcom/google/android/youtube/app/remote/ar;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ab;->f:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ab;->g:Lcom/google/android/youtube/app/remote/c;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b(Lcom/google/android/youtube/app/remote/c;)V

    .line 139
    :cond_18
    return-void
.end method

.class public final Lcom/google/android/youtube/app/remote/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/aq;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final e:Lcom/google/android/youtube/core/async/l;

.field private final f:Lcom/google/android/youtube/app/remote/bc;

.field private final g:Ljava/util/Map;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/android/youtube/core/utils/k;

.field private final j:Z

.field private k:Lcom/google/android/ytremote/logic/a;

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/remote/bc;Lcom/google/android/youtube/core/utils/k;ZLcom/google/android/youtube/app/remote/at;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "screensClient can not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bc;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->f:Lcom/google/android/youtube/app/remote/bc;

    .line 65
    const-string v0, "networkStatus can not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/k;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->i:Lcom/google/android/youtube/core/utils/k;

    .line 66
    iput-boolean p3, p0, Lcom/google/android/youtube/app/remote/bd;->j:Z

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    new-instance v0, Lcom/google/android/youtube/app/remote/bl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/remote/bl;-><init>(Lcom/google/android/youtube/app/remote/bd;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->e:Lcom/google/android/youtube/core/async/l;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->g:Ljava/util/Map;

    .line 76
    new-instance v0, Lcom/google/android/youtube/app/remote/be;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/google/android/youtube/app/remote/be;-><init>(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/remote/bc;Lcom/google/android/youtube/app/remote/at;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/remote/bh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/bh;-><init>(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/bd;)Z
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/bd;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/bd;)Lcom/google/android/youtube/core/async/l;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->e:Lcom/google/android/youtube/core/async/l;

    return-object v0
.end method

.method private b()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->k:Lcom/google/android/ytremote/logic/a;

    if-eqz v0, :cond_f

    .line 250
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->k:Lcom/google/android/ytremote/logic/a;

    invoke-interface {v0}, Lcom/google/android/ytremote/logic/a;->a()V

    .line 253
    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->i:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->c()Z

    move-result v0

    if-nez v0, :cond_18

    .line 266
    :goto_17
    return-void

    .line 257
    :cond_18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bd;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 261
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    new-instance v1, Lcom/google/android/ytremote/b/k;

    invoke-direct {v1}, Lcom/google/android/ytremote/b/k;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/remote/bd;->k:Lcom/google/android/ytremote/logic/a;

    .line 265
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bd;->k:Lcom/google/android/ytremote/logic/a;

    new-instance v2, Lcom/google/android/youtube/app/remote/bj;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/remote/bj;-><init>(Lcom/google/android/youtube/app/remote/bd;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Lcom/google/android/ytremote/logic/a;->a(Lcom/google/android/ytremote/logic/b;)V

    goto :goto_17
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/remote/bg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/bg;-><init>(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/remote/bd;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/remote/bd;)V
    .registers 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/youtube/app/remote/bd;->b()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/app/remote/ar;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->f:Lcom/google/android/youtube/app/remote/bc;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bd;->e:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/bc;->a(Lcom/google/android/youtube/core/async/l;)V

    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/bd;->j:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/youtube/app/remote/bd;->b()V

    :cond_14
    iput-boolean v4, p0, Lcom/google/android/youtube/app/remote/bd;->l:Z

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/bd;->j:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    :cond_29
    return-void
.end method

.method public final a(Lcom/google/android/ytremote/model/SsdpId;Lcom/google/android/youtube/app/remote/bk;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/bd;->j:Z

    if-nez v0, :cond_8

    .line 143
    invoke-interface {p2}, Lcom/google/android/youtube/app/remote/bk;->a()V

    .line 177
    :goto_7
    return-void

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bb;

    .line 147
    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/bb;->b()Lcom/google/android/ytremote/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/ytremote/model/b;->d()Lcom/google/android/ytremote/model/SsdpId;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/ytremote/model/SsdpId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 148
    invoke-interface {p2, v0}, Lcom/google/android/youtube/app/remote/bk;->a(Lcom/google/android/youtube/app/remote/bb;)V

    goto :goto_7

    .line 153
    :cond_2c
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->g:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    new-instance v0, Lcom/google/android/ytremote/b/k;

    invoke-direct {v0}, Lcom/google/android/ytremote/b/k;-><init>()V

    .line 156
    new-instance v1, Lcom/google/android/youtube/app/remote/bf;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/youtube/app/remote/bf;-><init>(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/ytremote/model/SsdpId;Lcom/google/android/youtube/app/remote/bk;Lcom/google/android/ytremote/logic/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/ytremote/logic/a;->a(Lcom/google/android/ytremote/logic/b;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/ytremote/model/PairingCode;Lcom/google/android/youtube/core/async/l;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->f:Lcom/google/android/youtube/app/remote/bc;

    new-instance v1, Lcom/google/android/youtube/app/remote/bi;

    invoke-direct {v1, p0, p3}, Lcom/google/android/youtube/app/remote/bi;-><init>(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/youtube/app/remote/bc;->a(Ljava/lang/String;Lcom/google/android/ytremote/model/PairingCode;Lcom/google/android/youtube/core/async/l;)V

    .line 226
    return-void
.end method

.method public final b(Lcom/google/android/youtube/app/remote/ar;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 182
    iput-boolean v1, p0, Lcom/google/android/youtube/app/remote/bd;->l:Z

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bd;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    :cond_1b
    return-void
.end method

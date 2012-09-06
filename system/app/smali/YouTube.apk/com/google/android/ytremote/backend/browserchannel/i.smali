.class public Lcom/google/android/ytremote/backend/browserchannel/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/backend/logic/CloudService;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/List;


# instance fields
.field private d:Lcom/google/android/ytremote/backend/browserchannel/p;

.field private final e:Lcom/google/android/ytremote/backend/browserchannel/c;

.field private f:Lcom/google/android/ytremote/backend/browserchannel/a;

.field private g:Lcom/google/android/ytremote/backend/model/a;

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Z

.field private k:Ljava/lang/Thread;

.field private l:Z

.field private m:Z

.field private n:Ljava/util/concurrent/CountDownLatch;

.field private final o:Z

.field private final p:Ljava/util/concurrent/ExecutorService;

.field private final q:Ljava/util/Queue;

.field private r:I

.field private s:I

.field private t:Ljava/util/concurrent/CountDownLatch;

.field private final u:Ljava/util/Timer;

.field private v:Ljava/util/TimerTask;

.field private w:J

.field private final x:Ljava/util/concurrent/ScheduledExecutorService;

.field private y:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/i;->a:Ljava/lang/String;

    .line 127
    const-class v0, Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/i;->c:Ljava/util/List;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/ytremote/backend/browserchannel/c;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->j:Z

    .line 173
    iput-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->l:Z

    .line 189
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->q:Ljava/util/Queue;

    .line 191
    const/16 v0, 0x1388

    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->r:I

    .line 213
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->e:Lcom/google/android/ytremote/backend/browserchannel/c;

    .line 215
    invoke-direct {p0}, Lcom/google/android/ytremote/backend/browserchannel/i;->f()V

    .line 216
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->t:Ljava/util/concurrent/CountDownLatch;

    .line 217
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    .line 218
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 219
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->p:Ljava/util/concurrent/ExecutorService;

    .line 220
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->x:Ljava/util/concurrent/ScheduledExecutorService;

    .line 221
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Timer - Reconnect to RC server"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->u:Ljava/util/Timer;

    .line 222
    invoke-static {p1}, Lcom/google/android/ytremote/a/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->o:Z

    .line 223
    return-void
.end method

.method static synthetic a(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/ytremote/backend/browserchannel/i;Lcom/google/android/ytremote/backend/browserchannel/a;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->f:Lcom/google/android/ytremote/backend/browserchannel/a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/ytremote/backend/browserchannel/i;Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;Ljava/util/List;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 641
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->t:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->t:Ljava/util/concurrent/CountDownLatch;

    sget v1, Lcom/google/android/ytremote/backend/browserchannel/p;->a:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_2a} :catch_8b

    :cond_2a
    :goto_2a
    iget-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->m:Z

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    sget-object v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->NOT_CONNECTED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    invoke-static {p3, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Ljava/util/List;Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;)V

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dropping call for method:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], because"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/ytremote/backend/browserchannel/i;->b()Z

    move-result v0

    if-eqz v0, :cond_94

    const-string v0, " still connecting, but not done"

    :goto_5d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/ytremote/a/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b9

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Had to drop call for method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because not connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8b
    move-exception v0

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    const-string v2, "Interrupted while waiting to connect."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :cond_94
    const-string v0, " not connected"

    goto :goto_5d

    :cond_97
    const/4 v1, 0x0

    :try_start_98
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->f:Lcom/google/android/ytremote/backend/browserchannel/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/ytremote/backend/browserchannel/a;->a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)Lcom/google/android/ytremote/backend/browserchannel/h;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9d} :catch_ba

    move-result-object v0

    :goto_9e
    if-eqz v0, :cond_11a

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/h;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iput v5, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->s:I

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e1

    :cond_b9
    :goto_b9
    return-void

    :catch_ba
    move-exception v0

    sget-object v2, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while sending message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_9e

    :cond_e1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult;

    :try_start_e7
    sget-object v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->OK:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_e9} :catch_ea

    goto :goto_b3

    :catch_ea
    move-exception v2

    sget-object v3, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OnSendMessageResult "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " threw exception"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    :cond_10a
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/ytremote/a/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sendJson returned a non-200 response. This shouldn\'t happen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11a
    iget v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->s:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_13a

    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Increasing recent errors and retrying: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    :cond_13a
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too many errors on sending "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reconnecting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/google/android/ytremote/backend/browserchannel/i;->c(Z)V

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->LOUNGE_SERVER_CONNECTION_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->asIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v5}, Lcom/google/android/ytremote/backend/browserchannel/i;->b(Z)V

    invoke-direct {p0}, Lcom/google/android/ytremote/backend/browserchannel/i;->h()V

    goto/16 :goto_b9
.end method

.method static synthetic a(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/util/List;Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    invoke-static {p1, p2}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Ljava/util/List;Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 553
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->d(Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->q:Ljava/util/Queue;

    new-instance v1, Lcom/google/android/ytremote/backend/browserchannel/p;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/ytremote/backend/browserchannel/p;-><init>(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->d:Lcom/google/android/ytremote/backend/browserchannel/p;

    if-nez v0, :cond_12

    .line 300
    invoke-direct {p0}, Lcom/google/android/ytremote/backend/browserchannel/i;->g()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 302
    :cond_12
    monitor-exit p0

    return-void

    .line 298
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Ljava/util/List;Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 549
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 551
    return-void

    .line 548
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->m:Z

    return-void
.end method

.method private b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 445
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 447
    :cond_9
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->f:Lcom/google/android/ytremote/backend/browserchannel/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/ytremote/backend/browserchannel/a;->a(ZZ)V

    .line 448
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 127
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->b(Z)V

    return-void
.end method

.method private c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 696
    iput-boolean p1, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->m:Z

    .line 697
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    if-eqz p1, :cond_10

    sget-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_CONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v0}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->asIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_c
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 699
    return-void

    .line 698
    :cond_10
    sget-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_DISCONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v0}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->asIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_c
.end method

.method static synthetic c(Lcom/google/android/ytremote/backend/browserchannel/i;)Z
    .registers 2
    .parameter

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/c;
    .registers 2
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->e:Lcom/google/android/ytremote/backend/browserchannel/c;

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 522
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 523
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    .line 522
    if-nez v0, :cond_c

    .line 536
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 524
    :cond_c
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 525
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 526
    :cond_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    .line 525
    if-eqz v0, :cond_4

    .line 527
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 528
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_16

    .line 529
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_2f} :catch_31

    move-result-object v0

    goto :goto_b

    .line 533
    :catch_31
    move-exception v0

    .line 534
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method static synthetic d(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->l:Z

    return-void
.end method

.method private d(Z)V
    .registers 4
    .parameter

    .prologue
    .line 702
    if-eqz p1, :cond_16

    .line 703
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    .line 704
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_STARTED_CONNECTING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->asIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 709
    :goto_15
    return-void

    .line 706
    :cond_16
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 707
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_STOPPED_CONNECTING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->asIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_15
.end method

.method private e()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 540
    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->c(Z)V

    .line 541
    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->b(Z)V

    .line 542
    invoke-direct {p0}, Lcom/google/android/ytremote/backend/browserchannel/i;->h()V

    .line 543
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->LOUNGE_SERVER_CONNECTION_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->asIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 544
    return-void
.end method

.method static synthetic e(Lcom/google/android/ytremote/backend/browserchannel/i;)V
    .registers 5
    .parameter

    .prologue
    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->f:Lcom/google/android/ytremote/backend/browserchannel/a;

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/a;->a()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->c(Z)V

    invoke-direct {p0}, Lcom/google/android/ytremote/backend/browserchannel/i;->f()V
    :try_end_c
    .catch Lcom/google/android/ytremote/backend/browserchannel/UnexpectedReponseCodeException; {:try_start_0 .. :try_end_c} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_44

    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/l;

    const-string v1, "HangingGetThread"

    invoke-direct {v0, p0, v1}, Lcom/google/android/ytremote/backend/browserchannel/l;-><init>(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->k:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response when binding channel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/UnexpectedReponseCodeException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/UnexpectedReponseCodeException;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    :goto_3b
    :pswitch_3b
    invoke-direct {p0}, Lcom/google/android/ytremote/backend/browserchannel/i;->e()V

    goto :goto_1a

    :pswitch_3f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Z)V

    goto :goto_3b

    :catch_44
    move-exception v0

    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    const-string v2, "Error connecting to Remote Control server:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/google/android/ytremote/backend/browserchannel/i;->e()V

    goto :goto_1a

    :pswitch_data_50
    .packed-switch 0x191
        :pswitch_3f
        :pswitch_3b
        :pswitch_3f
    .end packed-switch
.end method

.method private f()V
    .registers 5

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->j:Z

    .line 561
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x7d0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->w:J

    .line 562
    return-void
.end method

.method static synthetic f(Lcom/google/android/ytremote/backend/browserchannel/i;)V
    .registers 1
    .parameter

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/google/android/ytremote/backend/browserchannel/i;->g()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 520
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized g()V
    .registers 6

    .prologue
    .line 565
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/browserchannel/p;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->d:Lcom/google/android/ytremote/backend/browserchannel/p;

    if-eqz v0, :cond_2a

    .line 566
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/ytremote/backend/browserchannel/m;

    invoke-direct {v1, p0}, Lcom/google/android/ytremote/backend/browserchannel/m;-><init>(Lcom/google/android/ytremote/backend/browserchannel/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->x:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/ytremote/backend/browserchannel/n;

    invoke-direct {v2, p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/n;-><init>(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/util/concurrent/Future;)V

    .line 598
    iget v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->r:I

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 588
    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->y:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 600
    :cond_2a
    monitor-exit p0

    return-void

    .line 565
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/a;
    .registers 2
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->f:Lcom/google/android/ytremote/backend/browserchannel/a;

    return-object v0
.end method

.method private h()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x2

    .line 603
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 639
    :cond_a
    :goto_a
    return-void

    .line 608
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->j:Z

    if-eqz v0, :cond_18

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->j:Z

    .line 610
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->g:Lcom/google/android/ytremote/backend/model/a;

    invoke-virtual {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/a;)Ljava/util/concurrent/CountDownLatch;

    goto :goto_a

    .line 613
    :cond_18
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/ytremote/a/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 614
    sget-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CLOUD_SERVICE_NO_NETWORK:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v0}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->asIntent()Landroid/content/Intent;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    :cond_2b
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->t:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 624
    iget-wide v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->w:J

    mul-long/2addr v0, v4

    const-wide/32 v2, 0x3a980

    cmp-long v0, v0, v2

    if-gez v0, :cond_46

    .line 625
    iget-wide v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->w:J

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->w:J

    .line 629
    :cond_46
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reconnecting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->w:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->t:Ljava/util/concurrent/CountDownLatch;

    .line 632
    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/o;

    invoke-direct {v0, p0}, Lcom/google/android/ytremote/backend/browserchannel/o;-><init>(Lcom/google/android/ytremote/backend/browserchannel/i;)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->v:Ljava/util/TimerTask;

    .line 638
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->u:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->v:Ljava/util/TimerTask;

    iget-wide v2, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->w:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_a
.end method

.method static synthetic i(Lcom/google/android/ytremote/backend/browserchannel/i;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/ytremote/backend/browserchannel/i;)Z
    .registers 2
    .parameter

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->l:Z

    return v0
.end method

.method static synthetic k(Lcom/google/android/ytremote/backend/browserchannel/i;)V
    .registers 1
    .parameter

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/google/android/ytremote/backend/browserchannel/i;->e()V

    return-void
.end method

.method static synthetic l(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/p;
    .registers 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->d:Lcom/google/android/ytremote/backend/browserchannel/p;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/util/Queue;
    .registers 2
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->q:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->y:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic o(Lcom/google/android/ytremote/backend/browserchannel/i;)I
    .registers 2
    .parameter

    .prologue
    .line 191
    iget v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->r:I

    return v0
.end method

.method static synthetic p(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/model/a;
    .registers 2
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->g:Lcom/google/android/ytremote/backend/model/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/ytremote/backend/model/a;)Ljava/util/concurrent/CountDownLatch;
    .registers 6
    .parameter

    .prologue
    .line 238
    invoke-static {p1}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->g:Lcom/google/android/ytremote/backend/model/a;

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->s:I

    .line 241
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 242
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    const-string v1, "Already in the process of connecting. Ignoring connect request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->o:Z

    if-eqz v0, :cond_27

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ayncConnect() called while already connecting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_27
    const/4 v0, 0x0

    .line 276
    :goto_28
    return-object v0

    .line 248
    :cond_29
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->d(Z)V

    .line 251
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->t:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 253
    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/j;

    const-string v1, "asyncConnect"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/ytremote/backend/browserchannel/j;-><init>(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/lang/String;Lcom/google/android/ytremote/backend/model/a;)V

    .line 275
    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/j;->start()V

    .line 276
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    goto :goto_28
.end method

.method public final a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 292
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/i;->c:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;Ljava/util/List;)V

    .line 293
    return-void
.end method

.method final a(Ljava/util/concurrent/CountDownLatch;)V
    .registers 5
    .parameter
    .annotation build Lcom/google/android/ytremote/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/k;

    const-string v1, "Testing for buffered proxy"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/k;-><init>(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 416
    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/k;->start()V

    .line 417
    return-void
.end method

.method public final a(Z)V
    .registers 7
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 318
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->v:Ljava/util/TimerTask;

    if-eqz v0, :cond_23

    .line 319
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->v:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->v:Ljava/util/TimerTask;

    .line 323
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2c} :catch_78

    .line 327
    :goto_2c
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3f

    .line 328
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    const-string v1, "Timed out while waiting for BC to connect. Will attempt stopping the connection anyway."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_3f
    iget-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->m:Z

    if-eqz v0, :cond_46

    .line 332
    invoke-direct {p0, p1}, Lcom/google/android/ytremote/backend/browserchannel/i;->b(Z)V

    .line 334
    :cond_46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->c(Z)V

    .line 335
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->h:Landroid/content/Context;

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_DISCONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->asIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 336
    return-void

    .line 315
    :cond_56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/browserchannel/p;

    sget-object v2, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Dropping message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/google/android/ytremote/backend/browserchannel/p;->b:Ljava/util/List;

    sget-object v2, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->CANCELED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    invoke-static {v0, v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Ljava/util/List;Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;)V

    goto :goto_c

    .line 324
    :catch_78
    move-exception v0

    .line 325
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/i;->b:Ljava/lang/String;

    const-string v2, "Interrupted while waiting for BC to connect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->m:Z

    return v0
.end method

.method public final b()Z
    .registers 5

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/i;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.class final Lcom/google/android/ytremote/b/i;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/b/e;

.field private final b:Lcom/google/android/ytremote/logic/d;

.field private final c:Lcom/google/android/ytremote/model/PairingCode;


# direct methods
.method public constructor <init>(Lcom/google/android/ytremote/b/e;Lcom/google/android/ytremote/model/PairingCode;Lcom/google/android/ytremote/logic/d;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/google/android/ytremote/b/i;->c:Lcom/google/android/ytremote/model/PairingCode;

    .line 203
    iput-object p3, p0, Lcom/google/android/ytremote/b/i;->b:Lcom/google/android/ytremote/logic/d;

    .line 204
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 208
    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v0}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 209
    iget-object v1, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v0}, Lcom/google/android/ytremote/b/e;->b(Lcom/google/android/ytremote/b/e;)Lcom/google/android/ytremote/backend/logic/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/ytremote/b/i;->c:Lcom/google/android/ytremote/model/PairingCode;

    invoke-interface {v0, v2}, Lcom/google/android/ytremote/backend/logic/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen;

    invoke-static {v1, v0}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;Lcom/google/android/ytremote/model/CloudScreen;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v0}, Lcom/google/android/ytremote/b/e;->c(Lcom/google/android/ytremote/b/e;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 211
    invoke-static {}, Lcom/google/android/ytremote/b/e;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found screen with id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v2}, Lcom/google/android/ytremote/b/e;->c(Lcom/google/android/ytremote/b/e;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/ytremote/model/CloudScreen;->getScreenId()Lcom/google/android/ytremote/model/ScreenId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/ytremote/model/ScreenId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v0}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    iget-object v1, p0, Lcom/google/android/ytremote/b/i;->b:Lcom/google/android/ytremote/logic/d;

    invoke-static {v0, v1}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;Lcom/google/android/ytremote/logic/d;)V

    .line 226
    :goto_5c
    return-void

    .line 216
    :cond_5d
    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    iget-object v1, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v1}, Lcom/google/android/ytremote/b/e;->d(Lcom/google/android/ytremote/b/e;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;J)V

    .line 217
    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v0}, Lcom/google/android/ytremote/b/e;->e(Lcom/google/android/ytremote/b/e;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_85

    .line 218
    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v0}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    iget-object v1, p0, Lcom/google/android/ytremote/b/i;->b:Lcom/google/android/ytremote/logic/d;

    invoke-static {v0, v1}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;Lcom/google/android/ytremote/logic/d;)V

    goto :goto_5c

    .line 222
    :cond_85
    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v0}, Lcom/google/android/ytremote/b/e;->f(Lcom/google/android/ytremote/b/e;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/android/ytremote/b/i;

    iget-object v2, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    iget-object v3, p0, Lcom/google/android/ytremote/b/i;->c:Lcom/google/android/ytremote/model/PairingCode;

    iget-object v4, p0, Lcom/google/android/ytremote/b/i;->b:Lcom/google/android/ytremote/logic/d;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/b/i;-><init>(Lcom/google/android/ytremote/b/e;Lcom/google/android/ytremote/model/PairingCode;Lcom/google/android/ytremote/logic/d;)V

    iget-object v2, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    invoke-static {v2}, Lcom/google/android/ytremote/b/e;->e(Lcom/google/android/ytremote/b/e;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_5c

    .line 224
    :cond_a0
    iget-object v0, p0, Lcom/google/android/ytremote/b/i;->a:Lcom/google/android/ytremote/b/e;

    iget-object v1, p0, Lcom/google/android/ytremote/b/i;->b:Lcom/google/android/ytremote/logic/d;

    invoke-static {v0, v1}, Lcom/google/android/ytremote/b/e;->a(Lcom/google/android/ytremote/b/e;Lcom/google/android/ytremote/logic/d;)V

    goto :goto_5c
.end method

.class public final Lcom/google/android/youtube/core/utils/DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/IntentFilter;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/youtube/core/utils/h;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/h;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->a:Landroid/content/IntentFilter;

    .line 35
    iput-boolean v2, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->d:Z

    .line 39
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->b:Landroid/content/Context;

    .line 40
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/h;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->c:Lcom/google/android/youtube/core/utils/h;

    .line 41
    iput v2, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->e:I

    .line 42
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-boolean v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->d:Z

    if-nez v1, :cond_23

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->d:Z

    .line 61
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1a

    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->e:I

    :cond_1a
    iput v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->e:I

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->c:Lcom/google/android/youtube/core/utils/h;

    iget v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->e:I

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/h;->m()V

    .line 66
    :cond_23
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-boolean v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->d:Z

    if-eqz v0, :cond_e

    .line 70
    iput-boolean v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->d:Z

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    iput v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->e:I

    .line 74
    :cond_e
    return-void
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->e:I

    return v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/youtube/core/utils/DockReceiver;->isInitialStickyBroadcast()Z

    .line 50
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 51
    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->e:I

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->c:Lcom/google/android/youtube/core/utils/h;

    iget v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->e:I

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/h;->m()V

    .line 56
    :goto_1f
    return-void

    .line 54
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_1f
.end method

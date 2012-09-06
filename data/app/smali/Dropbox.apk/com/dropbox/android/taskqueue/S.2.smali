.class final Lcom/dropbox/android/taskqueue/S;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/service/v;


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/G;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/taskqueue/G;)V
    .registers 2
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/S;->a:Lcom/dropbox/android/taskqueue/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/taskqueue/G;Lcom/dropbox/android/taskqueue/H;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/dropbox/android/taskqueue/S;-><init>(Lcom/dropbox/android/taskqueue/G;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/service/w;)V
    .registers 6
    .parameter

    .prologue
    .line 912
    invoke-virtual {p1}, Lcom/dropbox/android/service/w;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 915
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 916
    new-instance v1, Lcom/dropbox/android/taskqueue/T;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/android/taskqueue/T;-><init>(Lcom/dropbox/android/taskqueue/S;Ljava/util/Timer;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 930
    :goto_15
    return-void

    .line 928
    :cond_16
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/S;->a:Lcom/dropbox/android/taskqueue/G;

    invoke-static {v0}, Lcom/dropbox/android/taskqueue/G;->b(Lcom/dropbox/android/taskqueue/G;)Landroid/database/ContentObservable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    goto :goto_15
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 934
    const/4 v0, 0x0

    return v0
.end method

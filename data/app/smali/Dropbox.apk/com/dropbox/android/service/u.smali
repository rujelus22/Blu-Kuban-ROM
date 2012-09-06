.class final Lcom/dropbox/android/service/u;
.super Ljava/util/TimerTask;
.source "panda.py"


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/dropbox/android/service/w;

.field final synthetic c:Ljava/util/Timer;

.field final synthetic d:Lcom/dropbox/android/service/t;


# direct methods
.method constructor <init>(Lcom/dropbox/android/service/t;Ljava/util/ArrayList;Lcom/dropbox/android/service/w;Ljava/util/Timer;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/dropbox/android/service/u;->d:Lcom/dropbox/android/service/t;

    iput-object p2, p0, Lcom/dropbox/android/service/u;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/dropbox/android/service/u;->b:Lcom/dropbox/android/service/w;

    iput-object p4, p0, Lcom/dropbox/android/service/u;->c:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/android/service/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/service/v;

    .line 173
    iget-object v2, p0, Lcom/dropbox/android/service/u;->b:Lcom/dropbox/android/service/w;

    invoke-interface {v0, v2}, Lcom/dropbox/android/service/v;->a(Lcom/dropbox/android/service/w;)V

    goto :goto_6

    .line 175
    :cond_18
    iget-object v0, p0, Lcom/dropbox/android/service/u;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 176
    return-void
.end method

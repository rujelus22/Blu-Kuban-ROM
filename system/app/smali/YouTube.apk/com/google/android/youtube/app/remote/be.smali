.class final Lcom/google/android/youtube/app/remote/be;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/utils/k;

.field final synthetic b:Lcom/google/android/youtube/app/remote/bc;

.field final synthetic c:Lcom/google/android/youtube/app/remote/at;

.field final synthetic d:Lcom/google/android/youtube/app/remote/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/remote/bc;Lcom/google/android/youtube/app/remote/at;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/be;->a:Lcom/google/android/youtube/core/utils/k;

    iput-object p3, p0, Lcom/google/android/youtube/app/remote/be;->b:Lcom/google/android/youtube/app/remote/bc;

    iput-object p4, p0, Lcom/google/android/youtube/app/remote/be;->c:Lcom/google/android/youtube/app/remote/at;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->a(Lcom/google/android/youtube/app/remote/bd;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 124
    :cond_8
    :goto_8
    return-void

    .line 82
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e6

    goto :goto_8

    .line 84
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/be;->a:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/be;->b:Lcom/google/android/youtube/app/remote/bc;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/bd;->b(Lcom/google/android/youtube/app/remote/bd;)Lcom/google/android/youtube/core/async/l;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/bc;->a(Lcom/google/android/youtube/core/async/l;)V

    .line 94
    :cond_22
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->e(Lcom/google/android/youtube/app/remote/bd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 87
    :cond_2f
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->c(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bb;

    .line 89
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/bd;->c(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/bd;->d(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v2, v0}, Lcom/google/android/youtube/app/remote/bd;->a(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V

    goto :goto_3c

    .line 97
    :pswitch_60
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->f(Lcom/google/android/youtube/app/remote/bd;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->e(Lcom/google/android/youtube/app/remote/bd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 102
    :pswitch_72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    .line 103
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 104
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_80
    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bb;

    .line 105
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/be;->c:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v2, v3, :cond_a2

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/be;->c:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/remote/at;->u()Lcom/google/android/youtube/app/remote/bb;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/app/remote/bb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 107
    :cond_a2
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/bd;->g(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/bd;->d(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v2, v0}, Lcom/google/android/youtube/app/remote/bd;->a(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V

    goto :goto_80

    .line 117
    :pswitch_ba
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 118
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/ytremote/model/SsdpId;

    .line 119
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/app/remote/bk;

    .line 120
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v2}, Lcom/google/android/youtube/app/remote/bd;->h(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_db

    .line 121
    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/bk;->a()V

    .line 123
    :cond_db
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/be;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->h(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 82
    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_f
        :pswitch_60
        :pswitch_72
        :pswitch_ba
    .end packed-switch
.end method

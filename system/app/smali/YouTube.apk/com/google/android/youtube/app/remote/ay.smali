.class final Lcom/google/android/youtube/app/remote/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/logic/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/ytremote/model/b;

.field final synthetic c:Lcom/google/android/youtube/app/remote/ax;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/ax;Ljava/lang/String;Lcom/google/android/ytremote/model/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/ay;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/app/remote/ay;->b:Lcom/google/android/ytremote/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    iget-object v0, v0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/remote/at;->c(Lcom/google/android/youtube/app/remote/at;Z)Z

    .line 822
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    iget-object v0, v0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    iget-object v1, v1, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/at;I)Lcom/google/android/youtube/app/remote/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/at;->a(Lcom/google/android/youtube/app/remote/al;)V

    .line 823
    return-void
.end method

.method public final a(Lcom/google/android/ytremote/model/CloudScreen;)V
    .registers 11
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 810
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    iget-object v0, v0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0, v5}, Lcom/google/android/youtube/app/remote/at;->c(Lcom/google/android/youtube/app/remote/at;Z)Z

    .line 812
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    iget-object v0, v0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    iget-object v0, v0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->f(Lcom/google/android/youtube/app/remote/at;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/ytremote/model/CloudScreen;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 814
    :cond_22
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    iget-object v0, v0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->i(Lcom/google/android/youtube/app/remote/at;)Landroid/os/Handler;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    iget-object v0, v0, Lcom/google/android/youtube/app/remote/ax;->a:Lcom/google/android/youtube/app/remote/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/at;->i(Lcom/google/android/youtube/app/remote/at;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    new-instance v0, Lcom/google/android/youtube/app/remote/aw;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ay;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ax;->a(Lcom/google/android/youtube/app/remote/ax;)J

    move-result-wide v3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/remote/aw;-><init>(Lcom/google/android/ytremote/model/CloudScreen;Ljava/lang/String;JB)V

    invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 817
    :cond_48
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ay;->c:Lcom/google/android/youtube/app/remote/ax;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ay;->b:Lcom/google/android/ytremote/model/b;

    invoke-static {v0, v1, p1}, Lcom/google/android/youtube/app/remote/ax;->a(Lcom/google/android/youtube/app/remote/ax;Lcom/google/android/ytremote/model/b;Lcom/google/android/ytremote/model/CloudScreen;)V

    .line 818
    return-void
.end method

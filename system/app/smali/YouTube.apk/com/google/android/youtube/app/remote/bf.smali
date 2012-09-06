.class final Lcom/google/android/youtube/app/remote/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/logic/b;


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/model/SsdpId;

.field final synthetic b:Lcom/google/android/youtube/app/remote/bk;

.field final synthetic c:Lcom/google/android/ytremote/logic/a;

.field final synthetic d:Lcom/google/android/youtube/app/remote/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/ytremote/model/SsdpId;Lcom/google/android/youtube/app/remote/bk;Lcom/google/android/ytremote/logic/a;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/bf;->d:Lcom/google/android/youtube/app/remote/bd;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/bf;->a:Lcom/google/android/ytremote/model/SsdpId;

    iput-object p3, p0, Lcom/google/android/youtube/app/remote/bf;->b:Lcom/google/android/youtube/app/remote/bk;

    iput-object p4, p0, Lcom/google/android/youtube/app/remote/bf;->c:Lcom/google/android/ytremote/logic/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/ytremote/model/b;)V
    .registers 7
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bf;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->h(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bf;->a:Lcom/google/android/ytremote/model/SsdpId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_52

    .line 159
    invoke-virtual {p1}, Lcom/google/android/ytremote/model/b;->d()Lcom/google/android/ytremote/model/SsdpId;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bf;->a:Lcom/google/android/ytremote/model/SsdpId;

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/model/SsdpId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bf;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->h(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bf;->a:Lcom/google/android/ytremote/model/SsdpId;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bf;->d:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->e(Lcom/google/android/youtube/app/remote/bd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/bf;->a:Lcom/google/android/ytremote/model/SsdpId;

    iget-object v4, p0, Lcom/google/android/youtube/app/remote/bf;->b:Lcom/google/android/youtube/app/remote/bk;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bf;->c:Lcom/google/android/ytremote/logic/a;

    invoke-interface {v0}, Lcom/google/android/ytremote/logic/a;->a()V

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bf;->b:Lcom/google/android/youtube/app/remote/bk;

    new-instance v1, Lcom/google/android/youtube/app/remote/bb;

    invoke-direct {v1, p1}, Lcom/google/android/youtube/app/remote/bb;-><init>(Lcom/google/android/ytremote/model/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/remote/bk;->a(Lcom/google/android/youtube/app/remote/bb;)V

    .line 167
    :cond_52
    return-void
.end method

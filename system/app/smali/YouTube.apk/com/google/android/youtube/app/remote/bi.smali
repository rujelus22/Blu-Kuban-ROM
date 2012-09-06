.class final Lcom/google/android/youtube/app/remote/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/l;

.field final synthetic b:Lcom/google/android/youtube/app/remote/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/core/async/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/bi;->b:Lcom/google/android/youtube/app/remote/bd;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/bi;->a:Lcom/google/android/youtube/core/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 214
    check-cast p1, Lcom/google/android/ytremote/model/PairingCode;

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bi;->a:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 214
    check-cast p1, Lcom/google/android/ytremote/model/PairingCode;

    check-cast p2, Lcom/google/android/youtube/app/remote/bb;

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bi;->b:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->c(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bi;->b:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->d(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bi;->b:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/remote/bd;->b(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bi;->a:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

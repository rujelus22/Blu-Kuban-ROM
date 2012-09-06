.class final Lcom/google/android/youtube/app/remote/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/logic/b;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/bd;

.field private final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/remote/bd;Ljava/util/Set;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/bj;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p2, p0, Lcom/google/android/youtube/app/remote/bj;->b:Ljava/util/Set;

    .line 322
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/ytremote/model/b;)V
    .registers 4
    .parameter

    .prologue
    .line 325
    new-instance v0, Lcom/google/android/youtube/app/remote/bb;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/app/remote/bb;-><init>(Lcom/google/android/ytremote/model/b;)V

    .line 326
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bj;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/bd;->g(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 327
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bj;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/bd;->g(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bj;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/bd;->d(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bj;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/remote/bd;->b(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V

    .line 331
    :cond_28
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bj;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.class final Lcom/google/android/youtube/app/remote/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/bb;

.field final synthetic b:Lcom/google/android/youtube/app/remote/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/bh;->b:Lcom/google/android/youtube/app/remote/bd;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/bh;->a:Lcom/google/android/youtube/app/remote/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bh;->b:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->i(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/ar;

    .line 200
    iget-object v2, p0, Lcom/google/android/youtube/app/remote/bh;->a:Lcom/google/android/youtube/app/remote/bb;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/app/remote/ar;->a(Lcom/google/android/youtube/app/remote/ap;)V

    goto :goto_a

    .line 202
    :cond_1c
    return-void
.end method

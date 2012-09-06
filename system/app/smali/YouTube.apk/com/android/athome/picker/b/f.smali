.class final Lcom/android/athome/picker/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/android/athome/picker/b/e;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/e;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/athome/picker/b/f;->b:Lcom/android/athome/picker/b/e;

    iput-object p2, p0, Lcom/android/athome/picker/b/f;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/athome/picker/b/f;->b:Lcom/android/athome/picker/b/e;

    iget-object v0, v0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->v(Lcom/android/athome/picker/b/a;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 918
    iget-object v0, p0, Lcom/android/athome/picker/b/f;->b:Lcom/android/athome/picker/b/e;

    iget-object v0, v0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    iget-object v1, p0, Lcom/android/athome/picker/b/f;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/util/List;)V

    .line 921
    iget-object v0, p0, Lcom/android/athome/picker/b/f;->b:Lcom/android/athome/picker/b/e;

    iget-object v0, v0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->t(Lcom/android/athome/picker/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 923
    iget-object v0, p0, Lcom/android/athome/picker/b/f;->b:Lcom/android/athome/picker/b/e;

    iget-object v0, v0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    iget-object v1, p0, Lcom/android/athome/picker/b/f;->b:Lcom/android/athome/picker/b/e;

    iget-object v1, v1, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->u(Lcom/android/athome/picker/b/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->b(Lcom/android/athome/picker/b/a;I)V

    .line 925
    :cond_33
    return-void
.end method

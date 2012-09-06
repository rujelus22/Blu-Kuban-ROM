.class final Lcom/android/athome/picker/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;)V
    .registers 2
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/athome/picker/b/d;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/athome/picker/b/d;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->t(Lcom/android/athome/picker/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 886
    iget-object v0, p0, Lcom/android/athome/picker/b/d;->a:Lcom/android/athome/picker/b/a;

    iget-object v1, p0, Lcom/android/athome/picker/b/d;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->u(Lcom/android/athome/picker/b/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->b(Lcom/android/athome/picker/b/a;I)V

    .line 887
    return-void
.end method

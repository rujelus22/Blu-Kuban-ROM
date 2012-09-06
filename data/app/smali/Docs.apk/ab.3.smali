.class Lab;
.super Lah;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lah",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LZ;


# direct methods
.method constructor <init>(LZ;)V
    .registers 3
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lab;->a:LZ;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lah;-><init>(Laa;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lab;->a:LZ;

    invoke-static {v0}, LZ;->a(LZ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 123
    iget-object v0, p0, Lab;->a:LZ;

    iget-object v1, p0, Lab;->a:LZ;

    iget-object v2, p0, Lab;->a:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, LZ;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, LZ;->a(LZ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

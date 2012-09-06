.class final Ldbxyzptlk/a/m;
.super Ldbxyzptlk/a/s;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/a/k;


# direct methods
.method constructor <init>(Ldbxyzptlk/a/k;)V
    .registers 3
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Ldbxyzptlk/a/m;->a:Ldbxyzptlk/a/k;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldbxyzptlk/a/s;-><init>(Ldbxyzptlk/a/l;)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Ldbxyzptlk/a/m;->a:Ldbxyzptlk/a/k;

    invoke-static {v0}, Ldbxyzptlk/a/k;->a(Ldbxyzptlk/a/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 123
    iget-object v0, p0, Ldbxyzptlk/a/m;->a:Ldbxyzptlk/a/k;

    iget-object v1, p0, Ldbxyzptlk/a/m;->a:Ldbxyzptlk/a/k;

    iget-object v2, p0, Ldbxyzptlk/a/m;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ldbxyzptlk/a/k;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/a/k;->a(Ldbxyzptlk/a/k;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

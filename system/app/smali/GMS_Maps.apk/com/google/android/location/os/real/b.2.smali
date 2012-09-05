.class Lcom/google/android/location/os/real/b;
.super Ljava/lang/Object;

# interfaces
.implements Ld/C;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ld/C;

.field private final c:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ld/C;Landroid/content/Context;)V
    .registers 7

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/location/os/real/b;->b:Ld/C;

    const-string v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "AsyncCollectorListener"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/os/real/b;)Ld/C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Ld/C;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/os/real/b;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/l;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/l;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/t;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/os/real/t;-><init>(Lcom/google/android/location/os/real/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/location/os/real/o;-><init>(Lcom/google/android/location/os/real/b;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/p;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/location/os/real/p;-><init>(Lcom/google/android/location/os/real/b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(LW/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/s;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/os/real/s;-><init>(Lcom/google/android/location/os/real/b;LW/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ld/aq;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/q;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/os/real/q;-><init>(Lcom/google/android/location/os/real/b;Ld/aq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/r;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/os/real/r;-><init>(Lcom/google/android/location/os/real/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;ILW/a;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/location/os/real/c;-><init>(Lcom/google/android/location/os/real/b;Ljava/lang/String;ILW/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/j;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/location/os/real/j;-><init>(Lcom/google/android/location/os/real/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/location/os/real/m;-><init>(Lcom/google/android/location/os/real/b;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/f;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/f;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/e;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/e;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/h;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/h;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/g;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/g;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/d;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/d;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/i;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/i;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/k;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/k;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/os/real/n;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/n;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

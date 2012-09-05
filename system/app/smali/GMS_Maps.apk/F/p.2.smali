.class LF/p;
.super Ljava/lang/Object;

# interfaces
.implements LF/o;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/LinkedList;

.field private final c:LI/i;

.field private final d:Z

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, LF/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LF/p;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(LF/x;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, LF/p;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LF/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    iput-boolean v0, p0, LF/p;->f:Z

    new-instance v0, LF/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LF/s;-><init>(LF/p;LF/q;)V

    invoke-interface {p1, v0}, LF/x;->a(Landroid/os/Handler$Callback;)LI/i;

    move-result-object v0

    iput-object v0, p0, LF/p;->c:LI/i;

    iput-boolean p2, p0, LF/p;->d:Z

    return-void
.end method

.method static synthetic a(LF/p;)V
    .registers 1

    invoke-direct {p0}, LF/p;->c()V

    return-void
.end method

.method static synthetic a(LF/p;LF/R;)V
    .registers 2

    invoke-direct {p0, p1}, LF/p;->b(LF/R;)V

    return-void
.end method

.method static synthetic a(LF/p;LF/r;)V
    .registers 2

    invoke-direct {p0, p1}, LF/p;->a(LF/r;)V

    return-void
.end method

.method static synthetic a(LF/p;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LF/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(LF/p;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, LF/p;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(LF/r;)V
    .registers 3

    invoke-direct {p0}, LF/p;->d()V

    iget-object v0, p0, LF/p;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LF/p;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(LF/R;)V
    .registers 6

    invoke-direct {p0}, LF/p;->d()V

    invoke-virtual {p1}, LF/R;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v0, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, LF/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_1e

    iget v0, p0, LF/p;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LF/p;->g:I

    :cond_1d
    return-void

    :cond_1e
    iget v0, p0, LF/p;->g:I

    if-lez v0, :cond_2b

    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_28
    const/4 v0, 0x0

    iput v0, p0, LF/p;->g:I

    :cond_2b
    iget-object v0, p0, LF/p;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/r;

    invoke-virtual {v0}, LF/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v0}, LF/r;->b()LF/T;

    move-result-object v0

    invoke-interface {v0, p1}, LF/T;->a(LF/R;)V

    goto :goto_31
.end method

.method static synthetic b(LF/p;LF/r;)V
    .registers 2

    invoke-direct {p0, p1}, LF/p;->b(LF/r;)V

    return-void
.end method

.method static synthetic b(LF/p;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LF/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(LF/r;)V
    .registers 5

    invoke-direct {p0}, LF/p;->d()V

    iget-object v0, p0, LF/p;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LF/p;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/r;

    invoke-virtual {v0}, LF/r;->b()LF/T;

    move-result-object v0

    invoke-virtual {p1}, LF/r;->b()LF/T;

    move-result-object v2

    if-ne v0, v2, :cond_e

    :cond_24
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, LF/p;->d()V

    iget-object v0, p0, LF/p;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/r;

    invoke-virtual {v0}, LF/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, LF/r;->b()LF/T;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LF/T;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_9

    :cond_27
    return-void
.end method

.method private c()V
    .registers 2

    invoke-direct {p0}, LF/p;->d()V

    iget-object v0, p0, LF/p;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, LF/p;->c:LI/i;

    invoke-interface {v0}, LI/i;->a()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_13
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, LF/p;->d()V

    iget-object v0, p0, LF/p;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/r;

    invoke-virtual {v0}, LF/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, LF/r;->b()LF/T;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LF/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_27
    return-void
.end method

.method private d()V
    .registers 4

    iget-boolean v0, p0, LF/p;->d:Z

    if-eqz v0, :cond_2b

    invoke-direct {p0}, LF/p;->e()Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation must be called on the location thread. Called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, LF/p;->d()V

    iget-object v0, p0, LF/p;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/r;

    invoke-virtual {v0}, LF/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, LF/r;->b()LF/T;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LF/T;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_27
    return-void
.end method

.method private e()Z
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, LF/p;->c:LI/i;

    invoke-interface {v1}, LI/i;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a()LI/i;
    .registers 2

    iget-object v0, p0, LF/p;->c:LI/i;

    return-object v0
.end method

.method public a(LF/R;)V
    .registers 7

    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    invoke-virtual {p1}, LF/R;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, LF/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_16
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_26
    invoke-static {p1}, LI/g;->a(Landroid/location/Location;)LaJ/B;

    move-result-object v0

    invoke-static {v0}, LaE/n;->e(LaJ/B;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {}, LaE/n;->k()LaE/n;

    move-result-object v1

    invoke-virtual {v1, v0}, LaE/n;->d(LaJ/B;)LaJ/B;

    move-result-object v0

    invoke-virtual {v0}, LaJ/B;->c()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, LF/R;->setLatitude(D)V

    invoke-virtual {v0}, LaJ/B;->e()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, LF/R;->setLongitude(D)V

    :cond_4a
    invoke-direct {p0}, LF/p;->e()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-direct {p0, p1}, LF/p;->b(LF/R;)V

    :goto_53
    return-void

    :cond_54
    iget-object v0, p0, LF/p;->c:LI/i;

    iget-object v1, p0, LF/p;->c:LI/i;

    const/4 v2, 0x3

    invoke-interface {v1, v2, p1}, LI/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LI/i;->a(Landroid/os/Message;)Z

    goto :goto_53
.end method

.method public a(Ljava/lang/String;LF/T;)V
    .registers 7

    new-instance v0, LF/r;

    invoke-direct {v0, p1, p2}, LF/r;-><init>(Ljava/lang/String;LF/T;)V

    iget-object v1, p0, LF/p;->c:LI/i;

    iget-object v2, p0, LF/p;->c:LI/i;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, LI/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v1, v0}, LI/i;->a(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, LF/p;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, LF/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, LF/p;->c:LI/i;

    iget-object v1, p0, LF/p;->c:LI/i;

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, LI/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LI/i;->a(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const/4 v5, 0x0

    invoke-direct {p0}, LF/p;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p2, p3}, LF/p;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, LF/p;->c:LI/i;

    iget-object v1, p0, LF/p;->c:LI/i;

    const/4 v2, 0x6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-interface {v1, v2, p3, v5, v3}, LI/i;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LI/i;->a(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method public b()V
    .registers 4

    invoke-direct {p0}, LF/p;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, LF/p;->c()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, LF/p;->c:LI/i;

    iget-object v1, p0, LF/p;->c:LI/i;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, LI/i;->a(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LI/i;->a(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, LF/p;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, LF/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, LF/p;->c:LI/i;

    iget-object v1, p0, LF/p;->c:LI/i;

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, LI/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LI/i;->a(Landroid/os/Message;)Z

    goto :goto_9
.end method

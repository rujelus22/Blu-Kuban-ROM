.class public Lx/c;
.super Ljava/lang/Object;

# interfaces
.implements Lx/aw;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lx/c;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lx/c;->b:Ljava/util/concurrent/CountDownLatch;

    iput v1, p0, Lx/c;->c:I

    iput v1, p0, Lx/c;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lx/c;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lt/af;ILt/ae;)V
    .registers 5

    if-nez p2, :cond_d

    iget-object v0, p0, Lx/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_7
    iget-object v0, p0, Lx/c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_d
    const/4 v0, 0x1

    if-ne p2, v0, :cond_17

    iget v0, p0, Lx/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/c;->c:I

    goto :goto_7

    :cond_17
    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    iget v0, p0, Lx/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/c;->d:I

    goto :goto_7
.end method

.method public a(J)Z
    .registers 5

    iget-object v0, p0, Lx/c;->b:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lx/c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

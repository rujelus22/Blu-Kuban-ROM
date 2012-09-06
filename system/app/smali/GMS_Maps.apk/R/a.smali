.class public Lr/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lr/a;->a:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lr/a;->b:Ljava/util/concurrent/CountDownLatch;

    .line 24
    iput v1, p0, Lr/a;->c:I

    .line 25
    iput v1, p0, Lr/a;->d:I

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lr/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ln/am;ILn/al;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 42
    :goto_3
    return-void

    .line 34
    :cond_4
    if-nez p2, :cond_11

    .line 35
    iget-object v0, p0, Lr/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_b
    :goto_b
    iget-object v0, p0, Lr/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3

    .line 36
    :cond_11
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1b

    .line 37
    iget v0, p0, Lr/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/a;->c:I

    goto :goto_b

    .line 38
    :cond_1b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_b

    .line 39
    iget v0, p0, Lr/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/a;->d:I

    goto :goto_b
.end method

.method public a(J)Z
    .registers 5
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lr/a;->b:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lr/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 66
    return-void
.end method

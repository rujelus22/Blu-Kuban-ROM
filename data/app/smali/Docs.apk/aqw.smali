.class Laqw;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# instance fields
.field a:Laqv;

.field b:Laqv;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Laqv;)V
    .registers 3
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Laqw;->a:Laqv;

    if-nez v0, :cond_9

    .line 491
    iput-object p1, p0, Laqw;->b:Laqv;

    iput-object p1, p0, Laqw;->a:Laqv;

    .line 497
    :goto_8
    return-void

    .line 493
    :cond_9
    iget-object v0, p0, Laqw;->b:Laqv;

    iput-object v0, p1, Laqv;->a:Laqv;

    .line 494
    iget-object v0, p0, Laqw;->b:Laqv;

    iput-object p1, v0, Laqv;->b:Laqv;

    .line 495
    iput-object p1, p0, Laqw;->b:Laqv;

    goto :goto_8
.end method

.method a()Z
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Laqw;->a:Laqv;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method b(Laqv;)V
    .registers 4
    .parameter

    .prologue
    .line 500
    iget-object v0, p1, Laqv;->a:Laqv;

    if-eqz v0, :cond_a

    .line 501
    iget-object v0, p1, Laqv;->a:Laqv;

    iget-object v1, p1, Laqv;->b:Laqv;

    iput-object v1, v0, Laqv;->b:Laqv;

    .line 503
    :cond_a
    iget-object v0, p1, Laqv;->b:Laqv;

    if-eqz v0, :cond_14

    .line 504
    iget-object v0, p1, Laqv;->b:Laqv;

    iget-object v1, p1, Laqv;->a:Laqv;

    iput-object v1, v0, Laqv;->a:Laqv;

    .line 506
    :cond_14
    iget-object v0, p0, Laqw;->a:Laqv;

    if-ne v0, p1, :cond_1c

    .line 507
    iget-object v0, p1, Laqv;->b:Laqv;

    iput-object v0, p0, Laqw;->a:Laqv;

    .line 509
    :cond_1c
    iget-object v0, p0, Laqw;->b:Laqv;

    if-ne v0, p1, :cond_24

    .line 510
    iget-object v0, p1, Laqv;->a:Laqv;

    iput-object v0, p0, Laqw;->b:Laqv;

    .line 512
    :cond_24
    return-void
.end method

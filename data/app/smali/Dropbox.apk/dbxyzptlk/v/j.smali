.class final Ldbxyzptlk/v/j;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/v/q;
.implements Ljava/io/Serializable;


# instance fields
.field final synthetic a:Ldbxyzptlk/v/e;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/e;)V
    .registers 2
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Ldbxyzptlk/v/j;->a:Ldbxyzptlk/v/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 688
    if-nez p1, :cond_a

    .line 689
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_a
    iget-object v0, p0, Ldbxyzptlk/v/j;->a:Ldbxyzptlk/v/e;

    iget-object v0, v0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    invoke-interface {v0, p1}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v0

    .line 692
    iget-object v1, p0, Ldbxyzptlk/v/j;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v1, v0}, Ldbxyzptlk/v/e;->b(I)Ldbxyzptlk/v/m;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ldbxyzptlk/v/m;->e(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 680
    if-nez p1, :cond_a

    .line 681
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_a
    iget-object v0, p0, Ldbxyzptlk/v/j;->a:Ldbxyzptlk/v/e;

    iget-object v0, v0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    invoke-interface {v0, p1}, Ldbxyzptlk/v/r;->e(Ljava/lang/Object;)I

    move-result v0

    .line 684
    iget-object v1, p0, Ldbxyzptlk/v/j;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v1, v0}, Ldbxyzptlk/v/e;->b(I)Ldbxyzptlk/v/m;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ldbxyzptlk/v/m;->c(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

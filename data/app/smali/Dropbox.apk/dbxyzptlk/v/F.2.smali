.class final Ldbxyzptlk/v/F;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/v/M;


# instance fields
.field final a:Ldbxyzptlk/v/z;

.field final b:Ldbxyzptlk/v/z;

.field final synthetic c:Ldbxyzptlk/v/C;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/C;Ldbxyzptlk/v/z;Ldbxyzptlk/v/z;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Ldbxyzptlk/v/F;->c:Ldbxyzptlk/v/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p2, p0, Ldbxyzptlk/v/F;->a:Ldbxyzptlk/v/z;

    .line 627
    iput-object p3, p0, Ldbxyzptlk/v/F;->b:Ldbxyzptlk/v/z;

    .line 628
    return-void
.end method


# virtual methods
.method public final a(Ldbxyzptlk/v/z;)Ldbxyzptlk/v/M;
    .registers 5
    .parameter

    .prologue
    .line 644
    new-instance v0, Ldbxyzptlk/v/F;

    iget-object v1, p0, Ldbxyzptlk/v/F;->c:Ldbxyzptlk/v/C;

    iget-object v2, p0, Ldbxyzptlk/v/F;->a:Ldbxyzptlk/v/z;

    invoke-direct {v0, v1, v2, p1}, Ldbxyzptlk/v/F;-><init>(Ldbxyzptlk/v/C;Ldbxyzptlk/v/z;Ldbxyzptlk/v/z;)V

    return-object v0
.end method

.method final a()V
    .registers 3

    .prologue
    .line 667
    iget-object v0, p0, Ldbxyzptlk/v/F;->c:Ldbxyzptlk/v/C;

    iget-object v0, v0, Ldbxyzptlk/v/C;->e:Ldbxyzptlk/v/q;

    iget-object v1, p0, Ldbxyzptlk/v/F;->b:Ldbxyzptlk/v/z;

    invoke-interface {v0, v1}, Ldbxyzptlk/v/q;->a(Ljava/lang/Object;)Z

    .line 668
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 631
    .line 633
    :try_start_0
    iget-object v0, p0, Ldbxyzptlk/v/F;->a:Ldbxyzptlk/v/z;

    invoke-interface {v0}, Ldbxyzptlk/v/z;->c()Ldbxyzptlk/v/M;

    move-result-object v0

    invoke-interface {v0}, Ldbxyzptlk/v/M;->get()Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_b

    move-result-object v0

    .line 638
    return-object v0

    .line 637
    :catchall_b
    move-exception v0

    .line 638
    invoke-virtual {p0}, Ldbxyzptlk/v/F;->a()V

    throw v0
.end method

.class final Ldbxyzptlk/l/l;
.super Ldbxyzptlk/n/c;
.source "panda.py"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 354
    invoke-direct {p0}, Ldbxyzptlk/n/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldbxyzptlk/n/k;)Ldbxyzptlk/l/k;
    .registers 4
    .parameter

    .prologue
    .line 356
    new-instance v1, Ldbxyzptlk/l/k;

    invoke-virtual {p1}, Ldbxyzptlk/n/k;->b()Ldbxyzptlk/n/g;

    move-result-object v0

    iget-object v0, v0, Ldbxyzptlk/n/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final synthetic b(Ldbxyzptlk/n/k;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Ldbxyzptlk/l/l;->a(Ldbxyzptlk/n/k;)Ldbxyzptlk/l/k;

    move-result-object v0

    return-object v0
.end method

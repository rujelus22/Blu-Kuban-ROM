.class public final Ldbxyzptlk/p/n;
.super Ldbxyzptlk/n/c;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 662
    invoke-direct {p0}, Ldbxyzptlk/n/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldbxyzptlk/n/k;)Ldbxyzptlk/p/m;
    .registers 6
    .parameter

    .prologue
    .line 665
    invoke-virtual {p1}, Ldbxyzptlk/n/k;->b()Ldbxyzptlk/n/g;

    move-result-object v0

    .line 666
    const-string v1, "sort_key"

    invoke-virtual {v0, v1}, Ldbxyzptlk/n/g;->b(Ljava/lang/String;)Ldbxyzptlk/n/k;

    move-result-object v1

    invoke-virtual {v1}, Ldbxyzptlk/n/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 667
    sget-object v2, Ldbxyzptlk/l/k;->v:Ldbxyzptlk/n/c;

    const-string v3, "metadata"

    invoke-virtual {v0, v3}, Ldbxyzptlk/n/g;->b(Ljava/lang/String;)Ldbxyzptlk/n/k;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldbxyzptlk/n/c;->b(Ldbxyzptlk/n/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/l/k;

    .line 668
    new-instance v2, Ldbxyzptlk/p/m;

    invoke-direct {v2, v0, v1}, Ldbxyzptlk/p/m;-><init>(Ldbxyzptlk/l/k;Ljava/lang/String;)V

    return-object v2
.end method

.method public final synthetic b(Ldbxyzptlk/n/k;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Ldbxyzptlk/p/n;->a(Ldbxyzptlk/n/k;)Ldbxyzptlk/p/m;

    move-result-object v0

    return-object v0
.end method

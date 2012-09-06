.class Ldbxyzptlk/v/N;
.super Ldbxyzptlk/t/h;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/v/z;


# instance fields
.field final b:Ldbxyzptlk/v/q;

.field final c:I

.field volatile d:Ldbxyzptlk/v/M;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/q;Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 981
    sget-object v0, Ldbxyzptlk/v/y;->a:Ldbxyzptlk/t/b;

    invoke-direct {p0, p2, v0}, Ldbxyzptlk/t/h;-><init>(Ljava/lang/Object;Ldbxyzptlk/t/b;)V

    .line 998
    invoke-static {}, Ldbxyzptlk/v/t;->d()Ldbxyzptlk/v/M;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/v/N;->d:Ldbxyzptlk/v/M;

    .line 982
    iput-object p1, p0, Ldbxyzptlk/v/N;->b:Ldbxyzptlk/v/q;

    .line 983
    iput p3, p0, Ldbxyzptlk/v/N;->c:I

    .line 984
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 991
    iget-object v0, p0, Ldbxyzptlk/v/N;->b:Ldbxyzptlk/v/q;

    invoke-interface {v0, p0}, Ldbxyzptlk/v/q;->a(Ljava/lang/Object;)Z

    .line 992
    return-void
.end method

.method public final a(Ldbxyzptlk/v/M;)V
    .registers 2
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Ldbxyzptlk/v/N;->d:Ldbxyzptlk/v/M;

    .line 1006
    return-void
.end method

.method public b()Ldbxyzptlk/v/z;
    .registers 2

    .prologue
    .line 1013
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ldbxyzptlk/v/M;
    .registers 2

    .prologue
    .line 1001
    iget-object v0, p0, Ldbxyzptlk/v/N;->d:Ldbxyzptlk/v/M;

    return-object v0
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 1009
    iget-object v0, p0, Ldbxyzptlk/v/N;->b:Ldbxyzptlk/v/q;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ldbxyzptlk/v/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1010
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 1017
    iget v0, p0, Ldbxyzptlk/v/N;->c:I

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 987
    invoke-virtual {p0}, Ldbxyzptlk/v/N;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

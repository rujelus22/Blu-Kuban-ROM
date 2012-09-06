.class Ldbxyzptlk/v/A;
.super Ldbxyzptlk/t/g;
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
    .line 920
    sget-object v0, Ldbxyzptlk/v/y;->a:Ldbxyzptlk/t/b;

    invoke-direct {p0, p2, v0}, Ldbxyzptlk/t/g;-><init>(Ljava/lang/Object;Ldbxyzptlk/t/b;)V

    .line 937
    invoke-static {}, Ldbxyzptlk/v/t;->d()Ldbxyzptlk/v/M;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/v/A;->d:Ldbxyzptlk/v/M;

    .line 921
    iput-object p1, p0, Ldbxyzptlk/v/A;->b:Ldbxyzptlk/v/q;

    .line 922
    iput p3, p0, Ldbxyzptlk/v/A;->c:I

    .line 923
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 930
    iget-object v0, p0, Ldbxyzptlk/v/A;->b:Ldbxyzptlk/v/q;

    invoke-interface {v0, p0}, Ldbxyzptlk/v/q;->a(Ljava/lang/Object;)Z

    .line 931
    return-void
.end method

.method public final a(Ldbxyzptlk/v/M;)V
    .registers 2
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Ldbxyzptlk/v/A;->d:Ldbxyzptlk/v/M;

    .line 945
    return-void
.end method

.method public b()Ldbxyzptlk/v/z;
    .registers 2

    .prologue
    .line 952
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ldbxyzptlk/v/M;
    .registers 2

    .prologue
    .line 940
    iget-object v0, p0, Ldbxyzptlk/v/A;->d:Ldbxyzptlk/v/M;

    return-object v0
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 948
    iget-object v0, p0, Ldbxyzptlk/v/A;->b:Ldbxyzptlk/v/q;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ldbxyzptlk/v/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 949
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 956
    iget v0, p0, Ldbxyzptlk/v/A;->c:I

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 926
    invoke-virtual {p0}, Ldbxyzptlk/v/A;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

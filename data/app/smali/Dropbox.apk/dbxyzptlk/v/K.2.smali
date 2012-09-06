.class Ldbxyzptlk/v/K;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/v/z;


# instance fields
.field final b:Ljava/lang/Object;

.field final c:Ldbxyzptlk/v/q;

.field final d:I

.field volatile e:Ldbxyzptlk/v/M;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/q;Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    invoke-static {}, Ldbxyzptlk/v/t;->d()Ldbxyzptlk/v/M;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/v/K;->e:Ldbxyzptlk/v/M;

    .line 862
    iput-object p1, p0, Ldbxyzptlk/v/K;->c:Ldbxyzptlk/v/q;

    .line 863
    iput-object p2, p0, Ldbxyzptlk/v/K;->b:Ljava/lang/Object;

    .line 864
    iput p3, p0, Ldbxyzptlk/v/K;->d:I

    .line 865
    return-void
.end method


# virtual methods
.method public final a(Ldbxyzptlk/v/M;)V
    .registers 2
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Ldbxyzptlk/v/K;->e:Ldbxyzptlk/v/M;

    .line 883
    return-void
.end method

.method public b()Ldbxyzptlk/v/z;
    .registers 2

    .prologue
    .line 890
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ldbxyzptlk/v/M;
    .registers 2

    .prologue
    .line 878
    iget-object v0, p0, Ldbxyzptlk/v/K;->e:Ldbxyzptlk/v/M;

    return-object v0
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 886
    iget-object v0, p0, Ldbxyzptlk/v/K;->c:Ldbxyzptlk/v/q;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ldbxyzptlk/v/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 887
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 894
    iget v0, p0, Ldbxyzptlk/v/K;->d:I

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Ldbxyzptlk/v/K;->b:Ljava/lang/Object;

    return-object v0
.end method

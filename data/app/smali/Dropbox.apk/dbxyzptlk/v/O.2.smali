.class final Ldbxyzptlk/v/O;
.super Ldbxyzptlk/t/h;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/v/M;


# instance fields
.field final a:Ldbxyzptlk/v/z;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ldbxyzptlk/v/z;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1042
    sget-object v0, Ldbxyzptlk/v/y;->a:Ldbxyzptlk/t/b;

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/t/h;-><init>(Ljava/lang/Object;Ldbxyzptlk/t/b;)V

    .line 1043
    iput-object p2, p0, Ldbxyzptlk/v/O;->a:Ldbxyzptlk/v/z;

    .line 1044
    return-void
.end method


# virtual methods
.method public final a(Ldbxyzptlk/v/z;)Ldbxyzptlk/v/M;
    .registers 4
    .parameter

    .prologue
    .line 1051
    new-instance v0, Ldbxyzptlk/v/O;

    invoke-virtual {p0}, Ldbxyzptlk/v/O;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ldbxyzptlk/v/O;-><init>(Ljava/lang/Object;Ldbxyzptlk/v/z;)V

    return-object v0
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 1047
    iget-object v0, p0, Ldbxyzptlk/v/O;->a:Ldbxyzptlk/v/z;

    invoke-interface {v0}, Ldbxyzptlk/v/z;->d()V

    .line 1048
    return-void
.end method

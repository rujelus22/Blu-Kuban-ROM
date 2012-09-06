.class final Ldbxyzptlk/v/B;
.super Ldbxyzptlk/t/g;
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
    .line 1065
    sget-object v0, Ldbxyzptlk/v/y;->a:Ldbxyzptlk/t/b;

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/t/g;-><init>(Ljava/lang/Object;Ldbxyzptlk/t/b;)V

    .line 1066
    iput-object p2, p0, Ldbxyzptlk/v/B;->a:Ldbxyzptlk/v/z;

    .line 1067
    return-void
.end method


# virtual methods
.method public final a(Ldbxyzptlk/v/z;)Ldbxyzptlk/v/M;
    .registers 4
    .parameter

    .prologue
    .line 1074
    new-instance v0, Ldbxyzptlk/v/B;

    invoke-virtual {p0}, Ldbxyzptlk/v/B;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ldbxyzptlk/v/B;-><init>(Ljava/lang/Object;Ldbxyzptlk/v/z;)V

    return-object v0
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 1070
    iget-object v0, p0, Ldbxyzptlk/v/B;->a:Ldbxyzptlk/v/z;

    invoke-interface {v0}, Ldbxyzptlk/v/z;->d()V

    .line 1071
    return-void
.end method

.class final Ldbxyzptlk/v/w;
.super Ldbxyzptlk/v/K;
.source "panda.py"


# instance fields
.field final a:Ldbxyzptlk/v/z;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/q;Ljava/lang/Object;ILdbxyzptlk/v/z;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 902
    invoke-direct {p0, p1, p2, p3}, Ldbxyzptlk/v/K;-><init>(Ldbxyzptlk/v/q;Ljava/lang/Object;I)V

    .line 903
    iput-object p4, p0, Ldbxyzptlk/v/w;->a:Ldbxyzptlk/v/z;

    .line 904
    return-void
.end method


# virtual methods
.method public final b()Ldbxyzptlk/v/z;
    .registers 2

    .prologue
    .line 910
    iget-object v0, p0, Ldbxyzptlk/v/w;->a:Ldbxyzptlk/v/z;

    return-object v0
.end method

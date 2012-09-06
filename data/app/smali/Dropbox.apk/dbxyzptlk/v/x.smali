.class final Ldbxyzptlk/v/x;
.super Ldbxyzptlk/v/N;
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
    .line 1024
    invoke-direct {p0, p1, p2, p3}, Ldbxyzptlk/v/N;-><init>(Ldbxyzptlk/v/q;Ljava/lang/Object;I)V

    .line 1025
    iput-object p4, p0, Ldbxyzptlk/v/x;->a:Ldbxyzptlk/v/z;

    .line 1026
    return-void
.end method


# virtual methods
.method public final b()Ldbxyzptlk/v/z;
    .registers 2

    .prologue
    .line 1032
    iget-object v0, p0, Ldbxyzptlk/v/x;->a:Ldbxyzptlk/v/z;

    return-object v0
.end method

.class final Ldbxyzptlk/v/v;
.super Ldbxyzptlk/v/A;
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
    .line 963
    invoke-direct {p0, p1, p2, p3}, Ldbxyzptlk/v/A;-><init>(Ldbxyzptlk/v/q;Ljava/lang/Object;I)V

    .line 964
    iput-object p4, p0, Ldbxyzptlk/v/v;->a:Ldbxyzptlk/v/z;

    .line 965
    return-void
.end method


# virtual methods
.method public final b()Ldbxyzptlk/v/z;
    .registers 2

    .prologue
    .line 971
    iget-object v0, p0, Ldbxyzptlk/v/v;->a:Ldbxyzptlk/v/z;

    return-object v0
.end method

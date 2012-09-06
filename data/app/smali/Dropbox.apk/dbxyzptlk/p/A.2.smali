.class public final Ldbxyzptlk/p/A;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/p/D;


# instance fields
.field private final a:Ldbxyzptlk/l/p;


# direct methods
.method public constructor <init>(Ldbxyzptlk/l/p;)V
    .registers 2
    .parameter

    .prologue
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput-object p1, p0, Ldbxyzptlk/p/A;->a:Ldbxyzptlk/l/p;

    .line 934
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 938
    iget-object v0, p0, Ldbxyzptlk/p/A;->a:Ldbxyzptlk/l/p;

    invoke-interface {v0}, Ldbxyzptlk/l/p;->a()V

    .line 939
    return-void
.end method

.method public final b()Ldbxyzptlk/l/k;
    .registers 2

    .prologue
    .line 943
    iget-object v0, p0, Ldbxyzptlk/p/A;->a:Ldbxyzptlk/l/p;

    invoke-interface {v0}, Ldbxyzptlk/l/p;->b()Ldbxyzptlk/l/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 928
    invoke-virtual {p0}, Ldbxyzptlk/p/A;->b()Ldbxyzptlk/l/k;

    move-result-object v0

    return-object v0
.end method

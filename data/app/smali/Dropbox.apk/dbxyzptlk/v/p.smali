.class final Ldbxyzptlk/v/p;
.super Ldbxyzptlk/v/a;
.source "panda.py"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field final synthetic c:Ldbxyzptlk/v/e;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/e;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1799
    iput-object p1, p0, Ldbxyzptlk/v/p;->c:Ldbxyzptlk/v/e;

    invoke-direct {p0}, Ldbxyzptlk/v/a;-><init>()V

    .line 1800
    iput-object p2, p0, Ldbxyzptlk/v/p;->a:Ljava/lang/Object;

    .line 1801
    iput-object p3, p0, Ldbxyzptlk/v/p;->b:Ljava/lang/Object;

    .line 1802
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1806
    iget-object v0, p0, Ldbxyzptlk/v/p;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1811
    iget-object v0, p0, Ldbxyzptlk/v/p;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1824
    if-nez p1, :cond_8

    .line 1825
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1827
    :cond_8
    iget-object v0, p0, Ldbxyzptlk/v/p;->c:Ldbxyzptlk/v/e;

    invoke-virtual {p0}, Ldbxyzptlk/v/p;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ldbxyzptlk/v/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1828
    iput-object p1, p0, Ldbxyzptlk/v/p;->b:Ljava/lang/Object;

    .line 1829
    return-object v0
.end method

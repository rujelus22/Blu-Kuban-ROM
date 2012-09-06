.class public final Ldbxyzptlk/l/g;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1839
    iput-boolean p1, p0, Ldbxyzptlk/l/g;->a:Z

    .line 1840
    iput-object p2, p0, Ldbxyzptlk/l/g;->c:Ljava/util/List;

    .line 1841
    iput-object p3, p0, Ldbxyzptlk/l/g;->b:Ljava/lang/String;

    .line 1842
    iput-boolean p4, p0, Ldbxyzptlk/l/g;->d:Z

    .line 1843
    return-void
.end method

.method public static a(Ldbxyzptlk/n/k;Ldbxyzptlk/n/c;)Ldbxyzptlk/l/g;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1846
    invoke-virtual {p0}, Ldbxyzptlk/n/k;->b()Ldbxyzptlk/n/g;

    move-result-object v0

    .line 1847
    const-string v1, "reset"

    invoke-virtual {v0, v1}, Ldbxyzptlk/n/g;->b(Ljava/lang/String;)Ldbxyzptlk/n/k;

    move-result-object v1

    invoke-virtual {v1}, Ldbxyzptlk/n/k;->e()Z

    move-result v1

    .line 1848
    const-string v2, "cursor"

    invoke-virtual {v0, v2}, Ldbxyzptlk/n/g;->b(Ljava/lang/String;)Ldbxyzptlk/n/k;

    move-result-object v2

    invoke-virtual {v2}, Ldbxyzptlk/n/k;->d()Ljava/lang/String;

    move-result-object v2

    .line 1849
    const-string v3, "has_more"

    invoke-virtual {v0, v3}, Ldbxyzptlk/n/g;->b(Ljava/lang/String;)Ldbxyzptlk/n/k;

    move-result-object v3

    invoke-virtual {v3}, Ldbxyzptlk/n/k;->e()Z

    move-result v3

    .line 1850
    const-string v4, "entries"

    invoke-virtual {v0, v4}, Ldbxyzptlk/n/g;->b(Ljava/lang/String;)Ldbxyzptlk/n/k;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/n/k;->c()Ldbxyzptlk/n/d;

    move-result-object v0

    new-instance v4, Ldbxyzptlk/l/f;

    invoke-direct {v4, p1}, Ldbxyzptlk/l/f;-><init>(Ldbxyzptlk/n/c;)V

    invoke-virtual {v0, v4}, Ldbxyzptlk/n/d;->a(Ldbxyzptlk/n/c;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1852
    new-instance v4, Ldbxyzptlk/l/g;

    invoke-direct {v4, v1, v0, v2, v3}, Ldbxyzptlk/l/g;-><init>(ZLjava/util/List;Ljava/lang/String;Z)V

    return-object v4
.end method

.class public final Ldbxyzptlk/l/f;
.super Ldbxyzptlk/n/c;
.source "panda.py"


# instance fields
.field public final a:Ldbxyzptlk/n/c;


# direct methods
.method public constructor <init>(Ldbxyzptlk/n/c;)V
    .registers 2
    .parameter

    .prologue
    .line 1910
    invoke-direct {p0}, Ldbxyzptlk/n/c;-><init>()V

    .line 1911
    iput-object p1, p0, Ldbxyzptlk/l/f;->a:Ldbxyzptlk/n/c;

    .line 1912
    return-void
.end method

.method public static a(Ldbxyzptlk/n/k;Ldbxyzptlk/n/c;)Ldbxyzptlk/l/e;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1919
    invoke-virtual {p0}, Ldbxyzptlk/n/k;->c()Ldbxyzptlk/n/d;

    move-result-object v0

    .line 1920
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldbxyzptlk/n/d;->a(I)Ldbxyzptlk/n/k;

    move-result-object v1

    invoke-virtual {v1}, Ldbxyzptlk/n/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 1921
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ldbxyzptlk/n/d;->a(I)Ldbxyzptlk/n/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldbxyzptlk/n/k;->a(Ldbxyzptlk/n/c;)Ljava/lang/Object;

    move-result-object v0

    .line 1922
    new-instance v2, Ldbxyzptlk/l/e;

    invoke-direct {v2, v1, v0}, Ldbxyzptlk/l/e;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final a(Ldbxyzptlk/n/k;)Ldbxyzptlk/l/e;
    .registers 3
    .parameter

    .prologue
    .line 1915
    iget-object v0, p0, Ldbxyzptlk/l/f;->a:Ldbxyzptlk/n/c;

    invoke-static {p1, v0}, Ldbxyzptlk/l/f;->a(Ldbxyzptlk/n/k;Ldbxyzptlk/n/c;)Ldbxyzptlk/l/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ldbxyzptlk/n/k;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1907
    invoke-virtual {p0, p1}, Ldbxyzptlk/l/f;->a(Ldbxyzptlk/n/k;)Ldbxyzptlk/l/e;

    move-result-object v0

    return-object v0
.end method

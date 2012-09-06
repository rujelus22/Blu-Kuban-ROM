.class LmX;
.super Ljava/lang/Object;
.source "PostEntry.java"

# interfaces
.implements Lna;


# instance fields
.field private final a:Lafe;

.field private final a:Laff;

.field private final a:LmY;

.field private final a:Lna;


# direct methods
.method constructor <init>(Lna;Lafe;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, LmX;->a:Lafe;

    .line 26
    iput-object p1, p0, LmX;->a:Lna;

    .line 27
    invoke-virtual {p2}, Lafe;->a()Laff;

    move-result-object v0

    iput-object v0, p0, LmX;->a:Laff;

    .line 28
    new-instance v0, LmZ;

    invoke-virtual {p2}, Lafe;->a()LaeU;

    move-result-object v1

    invoke-direct {v0, v1}, LmZ;-><init>(LaeU;)V

    iput-object v0, p0, LmX;->a:LmY;

    .line 29
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, LmX;->a:Lafe;

    invoke-virtual {v0}, Lafe;->b()Laem;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 59
    iget-object v0, p0, LmX;->a:Lafe;

    invoke-virtual {v0}, Lafe;->b()Laem;

    move-result-object v0

    invoke-virtual {v0}, Laem;->a()J

    move-result-wide v0

    .line 66
    :goto_12
    return-wide v0

    .line 61
    :cond_13
    const-string v0, "PostEntry"

    const-string v1, "getPublishedMs: post without valid published time."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, LmX;->a:Lafe;

    invoke-virtual {v0}, Lafe;->a()Laem;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 63
    const-string v0, "PostEntry"

    const-string v1, "getPublishedMs: post without a valid updated time."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, LmX;->a:Lafe;

    invoke-virtual {v0}, Lafe;->a()Laem;

    move-result-object v0

    invoke-virtual {v0}, Laem;->a()J

    move-result-wide v0

    goto :goto_12

    .line 66
    :cond_34
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_12
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, LmX;->a:Lafe;

    invoke-virtual {v0}, Lafe;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()LmY;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, LmX;->a:LmY;

    return-object v0
.end method

.method public a()Lna;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, LmX;->a:Lna;

    return-object v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 71
    const-string v0, "resolve"

    iget-object v1, p0, LmX;->a:Lafe;

    invoke-virtual {v1}, Lafe;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 76
    const-string v0, "reopen"

    iget-object v1, p0, LmX;->a:Lafe;

    invoke-virtual {v1}, Lafe;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, LmX;->a:Laff;

    invoke-virtual {v0}, Laff;->a()Lafd;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, LmX;->a:Laff;

    invoke-virtual {v0}, Laff;->a()Lafd;

    move-result-object v0

    invoke-virtual {v0}, Lafd;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 82
    iget-object v0, p0, LmX;->a:Laff;

    invoke-virtual {v0}, Laff;->a()Lafd;

    move-result-object v0

    invoke-virtual {v0}, Lafd;->b()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {p0}, LmX;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, LmX;->a:Laff;

    invoke-virtual {v0}, Laff;->b()Lafd;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, LmX;->a:Laff;

    invoke-virtual {v0}, Laff;->b()Lafd;

    move-result-object v0

    invoke-virtual {v0}, Lafd;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 91
    iget-object v0, p0, LmX;->a:Laff;

    invoke-virtual {v0}, Laff;->b()Lafd;

    move-result-object v0

    invoke-virtual {v0}, Lafd;->b()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

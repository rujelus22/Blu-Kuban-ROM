.class public Lkg;
.super Lks;
.source "a"


# direct methods
.method public constructor <init>(Lkd;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lks;-><init>(Lkd;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lez;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Lez;->c()V

    .line 78
    return-void
.end method

.method public final a(Ljava/lang/Object;Lez;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p2}, Lez;->b()V

    .line 52
    iget-object v0, p0, Lkg;->b:Lkd;

    invoke-interface {v0, p1}, Lkd;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->b(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public b(Lez;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lez;->e()V

    .line 60
    invoke-virtual {p1}, Lez;->c()V

    .line 61
    return-void
.end method

.method public b(Ljava/lang/Object;Lez;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p2}, Lez;->b()V

    .line 33
    iget-object v0, p0, Lkg;->b:Lkd;

    invoke-interface {v0, p1}, Lkd;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->b(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Lez;->d()V

    .line 35
    return-void
.end method

.method public final c(Lez;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lez;->c()V

    .line 69
    invoke-virtual {p1}, Lez;->c()V

    .line 70
    return-void
.end method

.method public final c(Ljava/lang/Object;Lez;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p2}, Lez;->b()V

    .line 42
    iget-object v0, p0, Lkg;->b:Lkd;

    invoke-interface {v0, p1}, Lkd;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->b(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Lez;->b()V

    .line 44
    return-void
.end method

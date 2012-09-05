.class public final Lkk;
.super Lks;
.source "a"


# direct methods
.method public constructor <init>(Lkd;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lks;-><init>(Lkd;)V

    .line 27
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
    .line 86
    invoke-virtual {p1}, Lez;->e()V

    .line 87
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
    .line 57
    invoke-virtual {p2}, Lez;->d()V

    .line 58
    iget-object v0, p0, Lkk;->b:Lkd;

    invoke-interface {v0, p1}, Lkd;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->a(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final b(Lez;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lez;->e()V

    .line 68
    invoke-virtual {p1}, Lez;->e()V

    .line 69
    return-void
.end method

.method public final b(Ljava/lang/Object;Lez;)V
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
    .line 37
    invoke-virtual {p2}, Lez;->d()V

    .line 39
    iget-object v0, p0, Lkk;->b:Lkd;

    invoke-interface {v0, p1}, Lkd;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lez;->d()V

    .line 40
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
    .line 76
    invoke-virtual {p1}, Lez;->c()V

    .line 78
    invoke-virtual {p1}, Lez;->e()V

    .line 79
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
    .line 47
    invoke-virtual {p2}, Lez;->d()V

    .line 49
    iget-object v0, p0, Lkk;->b:Lkd;

    invoke-interface {v0, p1}, Lkd;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lez;->b()V

    .line 50
    return-void
.end method

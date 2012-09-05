.class public Lnj;
.super Lfd;
.source "a"


# instance fields
.field protected d:Lfd;


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lfd;-><init>()V

    .line 26
    iput-object p1, p0, Lnj;->d:Lfd;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Lfh;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->a()Lfh;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lfd$a;)Z
    .registers 3
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0, p1}, Lfd;->a(Lfd$a;)Z

    move-result v0

    return v0
.end method

.method public final a(Lev;)[B
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0, p1}, Lfd;->a(Lev;)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Lfg;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->b()Lfg;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lfd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->c()Lfd;

    .line 221
    return-object p0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->close()V

    .line 71
    return-void
.end method

.method public final d()Lfg;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->d()Lfg;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->e()V

    .line 97
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lfa;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->g()Lfa;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lfa;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->h()Lfa;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()[C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->k()I

    move-result v0

    return v0
.end method

.method public final l()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->l()I

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/Number;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->m()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lfd$b;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->n()Lfd$b;

    move-result-object v0

    return-object v0
.end method

.method public final o()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->o()B

    move-result v0

    return v0
.end method

.method public final p()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->p()S

    move-result v0

    return v0
.end method

.method public final q()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->q()I

    move-result v0

    return v0
.end method

.method public final r()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()Ljava/math/BigInteger;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->s()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final t()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->t()F

    move-result v0

    return v0
.end method

.method public final u()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->u()D

    move-result-wide v0

    return-wide v0
.end method

.method public final v()Ljava/math/BigDecimal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lnj;->d:Lfd;

    invoke-virtual {v0}, Lfd;->v()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

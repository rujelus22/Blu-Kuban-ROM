.class public final Lgw;
.super Ljava/io/Writer;
.source "a"


# instance fields
.field protected final a:Lnl;


# direct methods
.method public constructor <init>(Lne;)V
    .registers 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 26
    new-instance v0, Lnl;

    invoke-direct {v0, p1}, Lnl;-><init>(Lne;)V

    iput-object v0, p0, Lgw;->a:Lnl;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lgw;->a:Lnl;

    invoke-virtual {v0}, Lnl;->e()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lgw;->a:Lnl;

    invoke-virtual {v1}, Lnl;->a()V

    .line 102
    return-object v0
.end method

.method public final append(C)Ljava/io/Writer;
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lgw;->write(I)V

    .line 39
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 6
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lgw;->a:Lnl;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lnl;->a(Ljava/lang/String;II)V

    .line 47
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lgw;->a:Lnl;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lnl;->a(Ljava/lang/String;II)V

    .line 55
    return-object p0
.end method

.method public final bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lgw;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lgw;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lgw;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public final flush()V
    .registers 1

    .prologue
    .line 60
    return-void
.end method

.method public final write(I)V
    .registers 4
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lgw;->a:Lnl;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lnl;->a(C)V

    .line 75
    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lgw;->a:Lnl;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lnl;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lgw;->a:Lnl;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lnl;->a(Ljava/lang/String;II)V

    .line 83
    return-void
.end method

.method public final write([C)V
    .registers 5
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lgw;->a:Lnl;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lnl;->c([CII)V

    .line 65
    return-void
.end method

.method public final write([CII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lgw;->a:Lnl;

    invoke-virtual {v0, p1, p2, p3}, Lnl;->c([CII)V

    .line 70
    return-void
.end method

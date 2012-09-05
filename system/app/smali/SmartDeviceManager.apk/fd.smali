.class public abstract Lfd;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfd$a;,
        Lfd$b;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Lfg;

.field protected c:Lfg;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfd;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Lfd;->a:I

    .line 266
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lfc;
    .registers 4
    .parameter

    .prologue
    .line 1150
    new-instance v0, Lfc;

    invoke-virtual {p0}, Lfd;->h()Lfa;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfc;-><init>(Ljava/lang/String;Lfa;)V

    return-object v0
.end method

.method public abstract a()Lfh;
.end method

.method public a(Lfd$a;)Z
    .registers 4
    .parameter

    .prologue
    .line 418
    iget v0, p0, Lfd;->a:I

    invoke-virtual {p1}, Lfd$a;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public abstract a(Lev;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract b()Lfg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract c()Lfd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public d()Lfg;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lfd;->b:Lfg;

    return-object v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lfd;->b:Lfg;

    if-eqz v0, :cond_b

    .line 571
    iget-object v0, p0, Lfd;->b:Lfg;

    iput-object v0, p0, Lfd;->c:Lfg;

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lfd;->b:Lfg;

    .line 574
    :cond_b
    return-void
.end method

.method public abstract f()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract g()Lfa;
.end method

.method public abstract h()Lfa;
.end method

.method public abstract i()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract j()[C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract k()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract l()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract m()Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract n()Lfd$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public o()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0}, Lfd;->q()I

    move-result v0

    .line 752
    const/16 v1, -0x80

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7f

    if-le v0, v1, :cond_2e

    .line 753
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lfd;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of Java byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfd;->a(Ljava/lang/String;)Lfc;

    move-result-object v0

    throw v0

    .line 755
    :cond_2e
    int-to-byte v0, v0

    return v0
.end method

.method public p()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0}, Lfd;->q()I

    move-result v0

    .line 775
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_2e

    .line 776
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lfd;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of Java short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfd;->a(Ljava/lang/String;)Lfc;

    move-result-object v0

    throw v0

    .line 778
    :cond_2e
    int-to-short v0, v0

    return v0
.end method

.method public abstract q()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract r()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract s()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract t()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract u()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public abstract v()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation
.end method

.method public w()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 907
    const/4 v0, 0x0

    return-object v0
.end method

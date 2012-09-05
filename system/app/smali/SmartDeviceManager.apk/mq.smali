.class public final Lmq;
.super Lmw;
.source "a"


# instance fields
.field protected final c:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lmw;-><init>()V

    iput-object p1, p0, Lmq;->c:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lmq;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lez;Lhs;)V
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
    .line 80
    iget-object v0, p0, Lmq;->c:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lez;->a(Ljava/math/BigDecimal;)V

    .line 81
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 86
    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    .line 91
    :goto_4
    return v0

    .line 87
    :cond_5
    if-nez p1, :cond_9

    move v0, v2

    goto :goto_4

    .line 88
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_15

    move v0, v2

    .line 89
    goto :goto_4

    .line 91
    :cond_15
    check-cast p1, Lmq;

    iget-object v0, p1, Lmq;->c:Ljava/math/BigDecimal;

    iget-object v1, p0, Lmq;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lmq;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

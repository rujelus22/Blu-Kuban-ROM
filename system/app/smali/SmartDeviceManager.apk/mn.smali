.class public final Lmn;
.super Lmw;
.source "a"


# instance fields
.field protected final c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lmw;-><init>()V

    iput-object p1, p0, Lmn;->c:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lmn;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

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
    .line 81
    iget-object v0, p0, Lmn;->c:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Lez;->a(Ljava/math/BigInteger;)V

    .line 82
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    if-ne p1, p0, :cond_6

    move v0, v3

    .line 92
    :goto_5
    return v0

    .line 88
    :cond_6
    if-nez p1, :cond_a

    move v0, v2

    goto :goto_5

    .line 89
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v2

    .line 90
    goto :goto_5

    .line 92
    :cond_16
    check-cast p1, Lmn;

    iget-object v0, p1, Lmn;->c:Ljava/math/BigInteger;

    iget-object v1, p0, Lmn;->c:Ljava/math/BigInteger;

    if-ne v0, v1, :cond_20

    move v0, v3

    goto :goto_5

    :cond_20
    move v0, v2

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lmn;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.class public abstract Lorg/codehaus/jackson/JsonParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected a:I

.field protected b:Lorg/codehaus/jackson/JsonToken;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;
    .registers 4
    .parameter

    .prologue
    .line 1291
    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public abstract a()Lorg/codehaus/jackson/JsonToken;
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .registers 4
    .parameter

    .prologue
    .line 498
    iget v0, p0, Lorg/codehaus/jackson/JsonParser;->a:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

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

.method public abstract b()Lorg/codehaus/jackson/JsonParser;
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->b:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public abstract close()V
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lorg/codehaus/jackson/JsonLocation;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public final g()B
    .registers 3

    .prologue
    .line 851
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->i()I

    move-result v0

    .line 853
    const/16 v1, -0x80

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7f

    if-le v0, v1, :cond_2e

    .line 854
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of Java byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 856
    :cond_2e
    int-to-byte v0, v0

    return v0
.end method

.method public final h()S
    .registers 3

    .prologue
    .line 875
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->i()I

    move-result v0

    .line 876
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_2e

    .line 877
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of Java short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 879
    :cond_2e
    int-to-short v0, v0

    return v0
.end method

.method public abstract i()I
.end method

.method public abstract j()J
.end method

.method public abstract k()Ljava/math/BigInteger;
.end method

.method public abstract l()F
.end method

.method public abstract m()D
.end method

.method public abstract n()Ljava/math/BigDecimal;
.end method

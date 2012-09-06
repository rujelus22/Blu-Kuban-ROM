.class public abstract Lorg/codehaus/jackson/JsonParser;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected a:I

.field protected b:Lorg/codehaus/jackson/JsonToken;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;
    .registers 4

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

    iget v0, p0, Lorg/codehaus/jackson/JsonParser;->a:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->b()I

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

    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->b:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lorg/codehaus/jackson/JsonLocation;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public abstract h()J
.end method

.method public abstract i()D
.end method

.method public final j()Z
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->l:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current token ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/JsonParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not of boolean type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v0
.end method

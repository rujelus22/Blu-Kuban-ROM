.class final Lcom/google/api/client/json/gson/GsonGenerator;
.super Lcom/google/api/client/json/d;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/gson/stream/JsonWriter;


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->flush()V

    .line 49
    return-void
.end method

.method public final a(D)V
    .registers 4
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(D)Lcom/google/gson/stream/JsonWriter;

    .line 104
    return-void
.end method

.method public final a(F)V
    .registers 5
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(D)Lcom/google/gson/stream/JsonWriter;

    .line 109
    return-void
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 89
    return-void
.end method

.method public final a(J)V
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 94
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 79
    return-void
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    .line 114
    return-void
.end method

.method public final a(Ljava/math/BigInteger;)V
    .registers 3
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    .line 99
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    .line 64
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 164
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 174
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 69
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 169
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 74
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 84
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.class public final Lcom/google/api/client/json/gson/GsonGenerator;
.super Lcom/google/api/client/json/d;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/gson/stream/JsonWriter;


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->flush()V

    .line 51
    return-void
.end method

.method public final a(D)V
    .registers 4
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(D)Lcom/google/gson/stream/JsonWriter;

    .line 106
    return-void
.end method

.method public final a(F)V
    .registers 5
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(D)Lcom/google/gson/stream/JsonWriter;

    .line 111
    return-void
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 91
    return-void
.end method

.method public final a(J)V
    .registers 4
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 96
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 81
    return-void
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    .line 116
    return-void
.end method

.method public final a(Ljava/math/BigInteger;)V
    .registers 3
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    .line 101
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    .line 66
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 166
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 176
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 71
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 171
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 76
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 86
    return-void
.end method

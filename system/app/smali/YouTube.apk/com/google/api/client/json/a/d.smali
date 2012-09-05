.class final Lcom/google/api/client/json/a/d;
.super Lcom/google/api/client/json/e;
.source "SourceFile"


# instance fields
.field private final a:Lorg/codehaus/jackson/JsonParser;

.field private final b:Lcom/google/api/client/json/a/a;


# direct methods
.method constructor <init>(Lcom/google/api/client/json/a/a;Lorg/codehaus/jackson/JsonParser;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/api/client/json/e;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/api/client/json/a/d;->b:Lcom/google/api/client/json/a/a;

    .line 45
    iput-object p2, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    .line 46
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/google/api/client/json/c;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->b:Lcom/google/api/client/json/a/a;

    return-object v0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->close()V

    .line 51
    return-void
.end method

.method public final c()Lcom/google/api/client/json/JsonToken;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/json/a/a;->a(Lorg/codehaus/jackson/JsonToken;)Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/api/client/json/JsonToken;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/json/a/a;->a(Lorg/codehaus/jackson/JsonToken;)Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/google/api/client/json/e;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    .line 71
    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()B
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->g()B

    move-result v0

    return v0
.end method

.method public final i()S
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->h()S

    move-result v0

    return v0
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->i()I

    move-result v0

    return v0
.end method

.method public final k()F
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->l()F

    move-result v0

    return v0
.end method

.method public final l()J
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()D
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->m()D

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/math/BigDecimal;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/api/client/json/a/d;->a:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->n()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

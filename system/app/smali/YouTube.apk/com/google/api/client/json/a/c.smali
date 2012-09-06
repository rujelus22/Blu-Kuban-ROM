.class final Lcom/google/api/client/json/a/c;
.super Lcom/google/api/client/json/d;
.source "SourceFile"


# instance fields
.field private final a:Lorg/codehaus/jackson/JsonGenerator;

.field private final b:Lcom/google/api/client/json/a/a;


# direct methods
.method constructor <init>(Lcom/google/api/client/json/a/a;Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/json/d;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/api/client/json/a/c;->b:Lcom/google/api/client/json/a/a;

    .line 43
    iput-object p2, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->g()V

    .line 49
    return-void
.end method

.method public final a(D)V
    .registers 4
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/JsonGenerator;->a(D)V

    .line 99
    return-void
.end method

.method public final a(F)V
    .registers 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(F)V

    .line 104
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(I)V

    .line 84
    return-void
.end method

.method public final a(J)V
    .registers 4
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/JsonGenerator;->a(J)V

    .line 89
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/math/BigDecimal;)V

    .line 109
    return-void
.end method

.method public final a(Ljava/math/BigInteger;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/math/BigInteger;)V

    .line 94
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Z)V

    .line 59
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    .line 119
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 64
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    .line 124
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    .line 69
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->f()V

    .line 79
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/api/client/json/a/c;->a:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->a()Lorg/codehaus/jackson/JsonGenerator;

    .line 134
    return-void
.end method

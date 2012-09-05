.class public abstract Lorg/codehaus/jackson/a/c;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "SourceFile"


# instance fields
.field protected b:Lorg/codehaus/jackson/c;

.field protected c:I

.field protected d:Z

.field protected e:Lorg/codehaus/jackson/a/i;

.field protected f:Z


# direct methods
.method protected constructor <init>(ILorg/codehaus/jackson/c;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonGenerator;-><init>()V

    .line 72
    iput p1, p0, Lorg/codehaus/jackson/a/c;->c:I

    .line 73
    invoke-static {}, Lorg/codehaus/jackson/a/i;->g()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    .line 74
    iput-object p2, p0, Lorg/codehaus/jackson/a/c;->b:Lorg/codehaus/jackson/c;

    .line 75
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/c;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/c;->d:Z

    .line 76
    return-void
.end method

.method protected static d(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 480
    new-instance v0, Lorg/codehaus/jackson/JsonGenerationException;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static h()V
    .registers 2

    .prologue
    .line 485
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 154
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/c;->c(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->h()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    .line 156
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_13

    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->a:Lorg/codehaus/jackson/d;

    .line 159
    :cond_13
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .registers 4
    .parameter

    .prologue
    .line 115
    iget v0, p0, Lorg/codehaus/jackson/a/c;->c:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

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

.method public b()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->a()Z

    move-result v0

    if-nez v0, :cond_24

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/a/c;->d(Ljava/lang/String;)V

    .line 177
    :cond_24
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_2f

    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->a:Lorg/codehaus/jackson/d;

    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->e()I

    .line 180
    :cond_2f
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->j()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    .line 183
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 196
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/c;->c(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->i()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    .line 198
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_13

    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->a:Lorg/codehaus/jackson/d;

    .line 201
    :cond_13
    return-void
.end method

.method protected abstract c(Ljava/lang/String;)V
.end method

.method public close()V
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/c;->f:Z

    .line 349
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->c()Z

    move-result v0

    if-nez v0, :cond_24

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/a/c;->d(Ljava/lang/String;)V

    .line 219
    :cond_24
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->j()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    .line 220
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_37

    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->a:Lorg/codehaus/jackson/d;

    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->e()I

    .line 223
    :cond_37
    return-void
.end method

.method public final g()Lorg/codehaus/jackson/a/i;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/a/c;->e:Lorg/codehaus/jackson/a/i;

    return-object v0
.end method

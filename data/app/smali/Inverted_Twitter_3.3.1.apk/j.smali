.class public abstract Lj;
.super Lorg/codehaus/jackson/JsonGenerator;


# instance fields
.field protected b:Lorg/codehaus/jackson/c;

.field protected c:I

.field protected d:Z

.field protected e:Lp;

.field protected f:Z


# direct methods
.method protected constructor <init>(ILorg/codehaus/jackson/c;)V
    .registers 4

    invoke-direct {p0}, Lorg/codehaus/jackson/JsonGenerator;-><init>()V

    iput p1, p0, Lj;->c:I

    invoke-static {}, Lp;->g()Lp;

    move-result-object v0

    iput-object v0, p0, Lj;->e:Lp;

    iput-object p2, p0, Lj;->b:Lorg/codehaus/jackson/c;

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->e:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lj;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lj;->d:Z

    return-void
.end method

.method protected static f(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lorg/codehaus/jackson/JsonGenerationException;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lj;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lj;->e:Lp;

    invoke-virtual {v0}, Lp;->h()Lp;

    move-result-object v0

    iput-object v0, p0, Lj;->e:Lp;

    iget-object v0, p0, Lj;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lj;->a:Lorg/codehaus/jackson/d;

    :cond_13
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .registers 4

    iget v0, p0, Lj;->c:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->b()I

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

    iget-object v0, p0, Lj;->e:Lp;

    invoke-virtual {v0}, Lp;->a()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an ARRAY but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj;->e:Lp;

    invoke-virtual {v1}, Lp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->f(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lj;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lj;->a:Lorg/codehaus/jackson/d;

    iget-object v0, p0, Lj;->e:Lp;

    invoke-virtual {v0}, Lp;->e()I

    :cond_2b
    iget-object v0, p0, Lj;->e:Lp;

    invoke-virtual {v0}, Lp;->j()Lp;

    move-result-object v0

    iput-object v0, p0, Lj;->e:Lp;

    return-void
.end method

.method public c()V
    .registers 2

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lj;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lj;->e:Lp;

    invoke-virtual {v0}, Lp;->i()Lp;

    move-result-object v0

    iput-object v0, p0, Lj;->e:Lp;

    iget-object v0, p0, Lj;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lj;->a:Lorg/codehaus/jackson/d;

    :cond_13
    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj;->f:Z

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lj;->e:Lp;

    invoke-virtual {v0}, Lp;->c()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an object but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj;->e:Lp;

    invoke-virtual {v1}, Lp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->f(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lj;->e:Lp;

    invoke-virtual {v0}, Lp;->j()Lp;

    move-result-object v0

    iput-object v0, p0, Lj;->e:Lp;

    iget-object v0, p0, Lj;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lj;->a:Lorg/codehaus/jackson/d;

    iget-object v0, p0, Lj;->e:Lp;

    invoke-virtual {v0}, Lp;->e()I

    :cond_33
    return-void
.end method

.method protected abstract e(Ljava/lang/String;)V
.end method

.method public final f()Lp;
    .registers 2

    iget-object v0, p0, Lj;->e:Lp;

    return-object v0
.end method

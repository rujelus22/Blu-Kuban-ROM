.class public abstract Lame;
.super Ljava/lang/Object;
.source "JsonElement.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lamd;
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lame;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    check-cast p0, Lamd;

    return-object p0

    .line 100
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lamh;
    .registers 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lame;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 82
    check-cast p0, Lamh;

    return-object p0

    .line 84
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a JSON Object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lamk;
    .registers 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lame;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 114
    check-cast p0, Lamk;

    return-object p0

    .line 116
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Primitive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Ljava/lang/Number;
    .registers 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 40
    instance-of v0, p0, Lamd;

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 49
    instance-of v0, p0, Lamh;

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 58
    instance-of v0, p0, Lamk;

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 68
    instance-of v0, p0, Lamg;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 315
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 316
    new-instance v1, Lanb;

    invoke-direct {v1, v0}, Lanb;-><init>(Ljava/io/Writer;)V

    .line 317
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lanb;->a(Z)V

    .line 318
    invoke-static {p0, v1}, Lamr;->a(Lame;Lanb;)V

    .line 319
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    return-object v0

    .line 320
    :catch_16
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

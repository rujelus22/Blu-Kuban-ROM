.class public final Lorg/codehaus/jackson/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/d;


# instance fields
.field protected a:Lorg/codehaus/jackson/a/c;

.field protected b:Lorg/codehaus/jackson/a/c;

.field protected c:Z

.field protected d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/codehaus/jackson/util/d;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/d;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->a:Lorg/codehaus/jackson/a/c;

    .line 32
    new-instance v0, Lorg/codehaus/jackson/util/e;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/e;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/a/c;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/c;->c:Z

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    .line 57
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 3
    .parameter

    .prologue
    .line 81
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 82
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/a/c;

    invoke-interface {v0}, Lorg/codehaus/jackson/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 143
    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    .line 145
    :cond_e
    if-lez p2, :cond_1d

    .line 146
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/a/c;

    iget v1, p0, Lorg/codehaus/jackson/util/c;->d:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/a/c;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 150
    :goto_17
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 151
    return-void

    .line 148
    :cond_1d
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    goto :goto_17
.end method

.method public final b(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 89
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/a/c;

    invoke-interface {v0}, Lorg/codehaus/jackson/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_13

    .line 90
    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    .line 92
    :cond_13
    return-void
.end method

.method public final b(Lorg/codehaus/jackson/JsonGenerator;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->a:Lorg/codehaus/jackson/a/c;

    invoke-interface {v0}, Lorg/codehaus/jackson/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 192
    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    .line 194
    :cond_e
    if-lez p2, :cond_1d

    .line 195
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->a:Lorg/codehaus/jackson/a/c;

    iget v1, p0, Lorg/codehaus/jackson/util/c;->d:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/a/c;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 199
    :goto_17
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 200
    return-void

    .line 197
    :cond_1d
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    goto :goto_17
.end method

.method public final c(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 4
    .parameter

    .prologue
    .line 134
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 135
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/a/c;

    iget v1, p0, Lorg/codehaus/jackson/util/c;->d:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/a/c;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 136
    return-void
.end method

.method public final d(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 3
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/c;->c:Z

    if-eqz v0, :cond_a

    .line 115
    const-string v0, " : "

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->c(Ljava/lang/String;)V

    .line 119
    :goto_9
    return-void

    .line 117
    :cond_a
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    goto :goto_9
.end method

.method public final e(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 3
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->a:Lorg/codehaus/jackson/a/c;

    invoke-interface {v0}, Lorg/codehaus/jackson/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 158
    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    .line 160
    :cond_e
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 161
    return-void
.end method

.method public final f(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 4
    .parameter

    .prologue
    .line 183
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 184
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->a:Lorg/codehaus/jackson/a/c;

    iget v1, p0, Lorg/codehaus/jackson/util/c;->d:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/a/c;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 185
    return-void
.end method

.method public final g(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 4
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->a:Lorg/codehaus/jackson/a/c;

    iget v1, p0, Lorg/codehaus/jackson/util/c;->d:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/a/c;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 168
    return-void
.end method

.method public final h(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 4
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/a/c;

    iget v1, p0, Lorg/codehaus/jackson/util/c;->d:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/a/c;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 99
    return-void
.end method

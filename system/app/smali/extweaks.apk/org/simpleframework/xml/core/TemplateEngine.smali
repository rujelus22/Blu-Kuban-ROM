.class Lorg/simpleframework/xml/core/TemplateEngine;
.super Ljava/lang/Object;
.source "TemplateEngine.java"


# instance fields
.field private filter:Lorg/simpleframework/xml/filter/Filter;

.field private name:Lorg/simpleframework/xml/core/Template;

.field private off:I

.field private source:Lorg/simpleframework/xml/core/Template;

.field private text:Lorg/simpleframework/xml/core/Template;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .registers 3
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    .line 77
    new-instance v0, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    .line 78
    new-instance v0, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    .line 79
    iput-object p1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 80
    return-void
.end method

.method private name()V
    .registers 4

    .prologue
    .line 137
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget v1, v1, Lorg/simpleframework/xml/core/Template;->count:I

    if-ge v0, v1, :cond_1b

    .line 138
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v0, v0, v1

    .line 140
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_32

    .line 141
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->replace()V

    .line 147
    :cond_1b
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->length()I

    move-result v0

    if-lez v0, :cond_31

    .line 148
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    const-string v1, "${"

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Template;->append(Lorg/simpleframework/xml/core/Template;)V

    .line 151
    :cond_31
    return-void

    .line 144
    :cond_32
    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Template;->append(C)V

    goto :goto_0
.end method

.method private parse()V
    .registers 5

    .prologue
    .line 112
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget v1, v1, Lorg/simpleframework/xml/core/Template;->count:I

    if-ge v0, v1, :cond_40

    .line 113
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v0, v0, v1

    .line 115
    const/16 v1, 0x24

    if-ne v0, v1, :cond_3a

    .line 116
    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget-object v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget v2, v2, Lorg/simpleframework/xml/core/Template;->count:I

    if-ge v1, v2, :cond_3a

    .line 117
    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget-object v1, v1, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v1, v1, v2

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_34

    .line 118
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->name()V

    goto :goto_0

    .line 121
    :cond_34
    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    .line 124
    :cond_3a
    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Template;->append(C)V

    goto :goto_0

    .line 126
    :cond_40
    return-void
.end method

.method private replace()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 161
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/TemplateEngine;->replace(Lorg/simpleframework/xml/core/Template;)V

    .line 163
    :cond_d
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    .line 164
    return-void
.end method

.method private replace(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-nez v0, :cond_1c

    .line 190
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    const-string v1, "${"

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    .line 196
    :goto_1b
    return-void

    .line 194
    :cond_1c
    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private replace(Lorg/simpleframework/xml/core/Template;)V
    .registers 3
    .parameter

    .prologue
    .line 175
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Template;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/TemplateEngine;->replace(Ljava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    .line 206
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    .line 207
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    .line 209
    return-void
.end method

.method public process(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 93
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 101
    :goto_8
    return-object p1

    .line 97
    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->parse()V

    .line 99
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->toString()Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1b

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->clear()V

    goto :goto_8

    :catchall_1b
    move-exception v0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->clear()V

    throw v0
.end method

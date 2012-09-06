.class Lorg/simpleframework/xml/stream/NodeWriter;
.super Ljava/lang/Object;
.source "NodeWriter.java"


# instance fields
.field private final active:Ljava/util/Set;

.field private final stack:Lorg/simpleframework/xml/stream/OutputStack;

.field private final verbose:Z

.field private final writer:Lorg/simpleframework/xml/stream/Formatter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/stream/NodeWriter;-><init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/stream/NodeWriter;-><init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;Z)V

    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lorg/simpleframework/xml/stream/Formatter;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/stream/Formatter;-><init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->active:Ljava/util/Set;

    .line 98
    new-instance v0, Lorg/simpleframework/xml/stream/OutputStack;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->active:Ljava/util/Set;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/OutputStack;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    .line 99
    iput-boolean p3, p0, Lorg/simpleframework/xml/stream/NodeWriter;->verbose:Z

    .line 100
    return-void
.end method

.method private writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 8
    .parameter

    .prologue
    .line 335
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v2

    .line 337
    invoke-interface {v2}, Lorg/simpleframework/xml/stream/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    invoke-interface {v2, v0}, Lorg/simpleframework/xml/stream/NodeMap;->get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/stream/OutputNode;

    .line 339
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/OutputNode;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 340
    iget-boolean v5, p0, Lorg/simpleframework/xml/stream/NodeWriter;->verbose:Z

    invoke-interface {v1, v5}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix(Z)Ljava/lang/String;

    move-result-object v1

    .line 342
    iget-object v5, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v5, v0, v4, v1}, Lorg/simpleframework/xml/stream/Formatter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 344
    :cond_2a
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->active:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method private writeComment(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 4
    .parameter

    .prologue
    .line 260
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_b

    .line 263
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/stream/Formatter;->writeComment(Ljava/lang/String;)V

    .line 265
    :cond_b
    return-void
.end method

.method private writeEnd(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 6
    .parameter

    .prologue
    .line 293
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getMode()Lorg/simpleframework/xml/stream/Mode;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    .line 296
    sget-object v3, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    if-ne v1, v3, :cond_21

    .line 297
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->getMode()Lorg/simpleframework/xml/stream/Mode;

    move-result-object v0

    move-object v1, v0

    goto :goto_b

    .line 301
    :cond_21
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeEnd(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/stream/Mode;)V

    .line 302
    return-void
.end method

.method private writeEnd(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/stream/Mode;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_b

    .line 316
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v1, v0, p2}, Lorg/simpleframework/xml/stream/Formatter;->writeText(Ljava/lang/String;Lorg/simpleframework/xml/stream/Mode;)V

    .line 318
    :cond_b
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-boolean v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->verbose:Z

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix(Z)Ljava/lang/String;

    move-result-object v1

    .line 321
    if-eqz v0, :cond_21

    .line 322
    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v2, v0, v1}, Lorg/simpleframework/xml/stream/Formatter;->writeEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Formatter;->flush()V

    .line 325
    :cond_21
    return-void
.end method

.method private writeName(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 5
    .parameter

    .prologue
    .line 276
    iget-boolean v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->verbose:Z

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix(Z)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_11

    .line 280
    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v2, v1, v0}, Lorg/simpleframework/xml/stream/Formatter;->writeStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_11
    return-void
.end method

.method private writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 7
    .parameter

    .prologue
    .line 355
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v1

    .line 357
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    invoke-interface {v1, v0}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    iget-object v4, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v4, v0, v3}, Lorg/simpleframework/xml/stream/Formatter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 362
    :cond_1e
    return-void
.end method

.method private writeStart(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 229
    new-instance v0, Lorg/simpleframework/xml/stream/OutputElement;

    invoke-direct {v0, p1, p0, p2}, Lorg/simpleframework/xml/stream/OutputElement;-><init>(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/stream/NodeWriter;Ljava/lang/String;)V

    .line 231
    if-nez p2, :cond_f

    .line 232
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v1, "Can not have a null name"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_f
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/stream/OutputStack;->push(Lorg/simpleframework/xml/stream/OutputNode;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method private writeStart(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeComment(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 247
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeName(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 248
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 249
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 250
    return-void
.end method


# virtual methods
.method public commit(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 4
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputStack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 159
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/NodeWriter;->isCommitted(Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 162
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeWriter;->writeStart(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 164
    :cond_17
    :goto_17
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    if-eq v0, p1, :cond_29

    .line 165
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->pop()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeWriter;->writeEnd(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_17

    .line 167
    :cond_29
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeEnd(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 168
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->pop()Lorg/simpleframework/xml/stream/OutputNode;

    .line 170
    :cond_31
    return-void
.end method

.method public isCommitted(Lorg/simpleframework/xml/stream/OutputNode;)Z
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->active:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRoot(Lorg/simpleframework/xml/stream/OutputNode;)Z
    .registers 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->bottom()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public remove(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 4
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    if-eq v0, p1, :cond_10

    .line 182
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v1, "Cannot remove node"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->pop()Lorg/simpleframework/xml/stream/OutputNode;

    .line 185
    return-void
.end method

.method public writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/NodeWriter;->writeStart(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 213
    :goto_c
    return-object v0

    .line 202
    :cond_d
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputStack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 203
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/NodeWriter;->isCommitted(Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 206
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeWriter;->writeStart(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 208
    :cond_24
    :goto_24
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    if-eq v0, p1, :cond_36

    .line 209
    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->pop()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeWriter;->writeEnd(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_24

    .line 211
    :cond_36
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/NodeWriter;->writeStart(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    goto :goto_c

    .line 213
    :cond_3b
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public writeRoot()Lorg/simpleframework/xml/stream/OutputNode;
    .registers 3

    .prologue
    .line 113
    new-instance v0, Lorg/simpleframework/xml/stream/OutputDocument;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/stream/OutputDocument;-><init>(Lorg/simpleframework/xml/stream/NodeWriter;Lorg/simpleframework/xml/stream/OutputStack;)V

    .line 115
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 116
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/Formatter;->writeProlog()V

    .line 118
    :cond_14
    return-object v0
.end method

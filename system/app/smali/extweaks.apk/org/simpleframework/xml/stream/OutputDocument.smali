.class Lorg/simpleframework/xml/stream/OutputDocument;
.super Ljava/lang/Object;
.source "OutputDocument.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/OutputNode;


# instance fields
.field private comment:Ljava/lang/String;

.field private mode:Lorg/simpleframework/xml/stream/Mode;

.field private name:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private stack:Lorg/simpleframework/xml/stream/OutputStack;

.field private table:Lorg/simpleframework/xml/stream/OutputNodeMap;

.field private value:Ljava/lang/String;

.field private writer:Lorg/simpleframework/xml/stream/NodeWriter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/NodeWriter;Lorg/simpleframework/xml/stream/OutputStack;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;-><init>(Lorg/simpleframework/xml/stream/OutputNode;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    .line 82
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    .line 83
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    .line 84
    iput-object p2, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    .line 85
    return-void
.end method


# virtual methods
.method public commit()V
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 349
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v1, "No root node"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->bottom()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->commit()V

    .line 352
    return-void
.end method

.method public getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .registers 3
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {v0, p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lorg/simpleframework/xml/stream/Mode;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/simpleframework/xml/stream/Node;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputDocument;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/simpleframework/xml/stream/OutputNode;
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix(Z)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isCommitted()Z
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRoot()Z
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 333
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v1, "No root node"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->bottom()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    .line 336
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/stream/OutputNodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->comment:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setData(Z)V
    .registers 3
    .parameter

    .prologue
    .line 303
    if-eqz p1, :cond_7

    .line 304
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    .line 308
    :goto_6
    return-void

    .line 306
    :cond_7
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    goto :goto_6
.end method

.method public setMode(Lorg/simpleframework/xml/stream/Mode;)V
    .registers 2
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    .line 232
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->name:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->reference:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->value:Ljava/lang/String;

    .line 280
    return-void
.end method

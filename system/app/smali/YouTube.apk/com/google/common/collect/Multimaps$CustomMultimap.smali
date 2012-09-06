.class Lcom/google/common/collect/Multimaps$CustomMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient factory:Lcom/google/common/base/am;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/am;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;-><init>(Ljava/util/Map;)V

    .line 118
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/am;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->factory:Lcom/google/common/base/am;

    .line 119
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 141
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/am;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->factory:Lcom/google/common/base/am;

    .line 142
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 143
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomMultimap;->setMap(Ljava/util/Map;)V

    .line 144
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 132
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->factory:Lcom/google/common/base/am;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 134
    return-void
.end method


# virtual methods
.method protected createCollection()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->factory:Lcom/google/common/base/am;

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

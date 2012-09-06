.class Lcom/google/common/collect/Multimaps$CustomListMultimap;
.super Lcom/google/common/collect/AbstractListMultimap;
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
    .line 199
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;-><init>(Ljava/util/Map;)V

    .line 200
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/am;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/am;

    .line 201
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 220
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/am;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/am;

    .line 221
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 222
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->setMap(Ljava/util/Map;)V

    .line 223
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 211
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/am;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 213
    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->createCollection()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/List;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/am;

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

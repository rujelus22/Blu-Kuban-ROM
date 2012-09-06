.class Lcom/google/common/collect/Multimaps$CustomSetMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
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
    .line 277
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 278
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/am;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lcom/google/common/base/am;

    .line 279
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 297
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 298
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/am;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lcom/google/common/base/am;

    .line 299
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 300
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->setMap(Ljava/util/Map;)V

    .line 301
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 288
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 289
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lcom/google/common/base/am;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 291
    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/Set;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lcom/google/common/base/am;

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

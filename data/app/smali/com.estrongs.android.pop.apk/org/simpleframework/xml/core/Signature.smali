.class Lorg/simpleframework/xml/core/Signature;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/Parameter;",
        ">;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/Signature;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getParameter(I)Lorg/simpleframework/xml/core/Parameter;
    .registers 3

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Signature;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Signature;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSignature(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Signature;
    .registers 6

    new-instance v1, Lorg/simpleframework/xml/core/Signature;

    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->type:Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Signature;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    return-object v1

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Parameter;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lorg/simpleframework/xml/core/Signature;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->type:Ljava/lang/Class;

    return-object v0
.end method

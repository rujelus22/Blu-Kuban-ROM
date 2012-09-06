.class Lorg/simpleframework/xml/core/ClassCreator;
.super Ljava/lang/Object;
.source "ClassCreator.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Creator;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Initializer;",
            ">;"
        }
    .end annotation
.end field

.field private final primary:Lorg/simpleframework/xml/core/Initializer;

.field private final registry:Lorg/simpleframework/xml/core/Signature;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/simpleframework/xml/core/Signature;Lorg/simpleframework/xml/core/Initializer;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Initializer;",
            ">;",
            "Lorg/simpleframework/xml/core/Signature;",
            "Lorg/simpleframework/xml/core/Initializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/Signature;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassCreator;->type:Ljava/lang/Class;

    .line 65
    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassCreator;->registry:Lorg/simpleframework/xml/core/Signature;

    .line 66
    iput-object p3, p0, Lorg/simpleframework/xml/core/ClassCreator;->primary:Lorg/simpleframework/xml/core/Initializer;

    .line 67
    iput-object p1, p0, Lorg/simpleframework/xml/core/ClassCreator;->list:Ljava/util/List;

    .line 68
    return-void
.end method

.method private getInitializer(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Lorg/simpleframework/xml/core/Initializer;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v2, p0, Lorg/simpleframework/xml/core/ClassCreator;->primary:Lorg/simpleframework/xml/core/Initializer;

    .line 126
    const-wide/16 v0, 0x0

    .line 128
    iget-object v3, p0, Lorg/simpleframework/xml/core/ClassCreator;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v2

    move-wide v8, v0

    move-wide v1, v8

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Initializer;

    .line 129
    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Initializer;->getScore(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)D

    move-result-wide v4

    .line 131
    cmpl-double v7, v4, v1

    if-lez v7, :cond_28

    move-object v2, v0

    move-wide v0, v4

    :goto_23
    move-object v3, v2

    move-wide v8, v0

    move-wide v1, v8

    .line 135
    goto :goto_d

    .line 136
    :cond_27
    return-object v3

    :cond_28
    move-wide v8, v1

    move-wide v0, v8

    move-object v2, v3

    goto :goto_23
.end method


# virtual methods
.method public getInitializers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Initializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ClassCreator;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassCreator;->primary:Lorg/simpleframework/xml/core/Initializer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Initializer;->getInstance(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ClassCreator;->getInitializer(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Lorg/simpleframework/xml/core/Initializer;

    move-result-object v0

    .line 108
    if-nez v0, :cond_16

    .line 109
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Constructor not matched for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/ClassCreator;->type:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 111
    :cond_16
    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Initializer;->getInstance(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;
    .registers 3
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassCreator;->registry:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassCreator;->registry:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDefault()Z
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassCreator;->primary:Lorg/simpleframework/xml/core/Initializer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 186
    const-string v0, "creator for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/ClassCreator;->type:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

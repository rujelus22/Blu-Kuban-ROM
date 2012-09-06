.class Lorg/simpleframework/xml/core/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# instance fields
.field private final factory:Ljava/lang/reflect/Constructor;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:Lorg/simpleframework/xml/core/Signature;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/Signature;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/Signature;->getParameters()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lorg/simpleframework/xml/core/Initializer;->signature:Lorg/simpleframework/xml/core/Signature;

    .line 64
    iput-object p1, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    .line 65
    return-void
.end method

.method private getAdjustment(Lorg/simpleframework/xml/core/Context;D)D
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    .line 249
    const-wide/16 v2, 0x0

    cmpl-double v2, p2, v2

    if-lez v2, :cond_1e

    .line 250
    iget-object v2, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, p2, v2

    add-double/2addr v0, v2

    .line 252
    :goto_1d
    return-wide v0

    :cond_1e
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, p2, v0

    goto :goto_1d
.end method

.method private getInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_e

    .line 267
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 269
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getPercentage(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)D
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/high16 v3, -0x4010

    .line 215
    const-wide/16 v0, 0x0

    .line 217
    iget-object v2, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v0

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    .line 218
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Parameter;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v6

    .line 219
    invoke-interface {p2, v6}, Lorg/simpleframework/xml/core/Criteria;->resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v6

    .line 221
    if-nez v6, :cond_31

    .line 222
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->isRequired()Z

    move-result v6

    if-eqz v6, :cond_29

    move-wide v0, v3

    .line 232
    :goto_28
    return-wide v0

    .line 225
    :cond_29
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3c

    move-wide v0, v3

    .line 226
    goto :goto_28

    .line 229
    :cond_31
    const-wide/high16 v6, 0x3ff0

    add-double v0, v1, v6

    :goto_35
    move-wide v1, v0

    .line 231
    goto :goto_b

    .line 232
    :cond_37
    invoke-direct {p0, p1, v1, v2}, Lorg/simpleframework/xml/core/Initializer;->getAdjustment(Lorg/simpleframework/xml/core/Context;D)D

    move-result-wide v0

    goto :goto_28

    :cond_3c
    move-wide v0, v1

    goto :goto_35
.end method

.method private getVariable(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    .line 142
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Parameter;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Criteria;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_17

    .line 146
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 148
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public getInstance(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_e

    .line 103
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 105
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 122
    const/4 v0, 0x0

    :goto_7
    iget-object v2, p0, Lorg/simpleframework/xml/core/Initializer;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 123
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Initializer;->getVariable(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 125
    :cond_18
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/Initializer;->getInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;
    .registers 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public getScore(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)D
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Signature;->getSignature(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Signature;

    move-result-object v1

    .line 169
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Criteria;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Criteria;->resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v3

    .line 172
    if-eqz v3, :cond_a

    .line 173
    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Signature;->getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    .line 174
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v4

    .line 176
    if-nez v0, :cond_40

    .line 177
    invoke-interface {v3, p1}, Lorg/simpleframework/xml/core/Label;->getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v3

    .line 179
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Signature;->getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_2e

    .line 183
    :cond_40
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 188
    if-nez v0, :cond_a

    .line 189
    const-wide/high16 v0, -0x4010

    .line 194
    :goto_4a
    return-wide v0

    :cond_4b
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Initializer;->getPercentage(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)D

    move-result-wide v0

    goto :goto_4a
.end method

.method public isDefault()Z
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/simpleframework/xml/core/Initializer;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

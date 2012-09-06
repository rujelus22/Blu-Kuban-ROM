.class Lorg/simpleframework/xml/core/CacheLabel;
.super Ljava/lang/Object;
.source "CacheLabel.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Label;


# instance fields
.field private final annotation:Ljava/lang/annotation/Annotation;

.field private final attribute:Z

.field private final collection:Z

.field private final contact:Lorg/simpleframework/xml/core/Contact;

.field private final data:Z

.field private final decorator:Lorg/simpleframework/xml/core/Decorator;

.field private final depend:Lorg/simpleframework/xml/strategy/Type;

.field private final entry:Ljava/lang/String;

.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final inline:Z

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final names:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final override:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final paths:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final required:Z

.field private final text:Z

.field private final type:Ljava/lang/Class;

.field private final union:Z


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;)V
    .registers 3
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->annotation:Ljava/lang/annotation/Annotation;

    .line 150
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    .line 151
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    .line 152
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->attribute:Z

    .line 153
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->collection:Z

    .line 154
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 155
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->depend:Lorg/simpleframework/xml/strategy/Type;

    .line 156
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->required:Z

    .line 157
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->override:Ljava/lang/String;

    .line 158
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->inline:Z

    .line 159
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isUnion()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->union:Z

    .line 160
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getNames()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->names:Ljava/util/Collection;

    .line 161
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPaths()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->paths:Ljava/util/Collection;

    .line 162
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->path:Ljava/lang/String;

    .line 163
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->type:Ljava/lang/Class;

    .line 164
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->name:Ljava/lang/String;

    .line 165
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->entry:Ljava/lang/String;

    .line 166
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->data:Z

    .line 167
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->text:Z

    .line 168
    iput-object p1, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    .line 169
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->annotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 3
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    return-object v0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->depend:Lorg/simpleframework/xml/strategy/Type;

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->entry:Ljava/lang/String;

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .registers 3
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 327
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    .line 329
    iget-boolean v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->attribute:Z

    if-eqz v1, :cond_f

    .line 330
    iget-object v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_e
    return-object v0

    :cond_f
    iget-object v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->names:Ljava/util/Collection;

    return-object v0
.end method

.method public getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->union:Z

    if-nez v0, :cond_1a

    .line 236
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CacheLabel;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CacheLabel;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v1

    .line 239
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 241
    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_19
.end method

.method public getOverride()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->override:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CacheLabel;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-boolean v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->attribute:Z

    if-eqz v1, :cond_f

    .line 349
    iget-object v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_e
    return-object v0

    :cond_f
    iget-object v1, p0, Lorg/simpleframework/xml/core/CacheLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getPaths()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->paths:Ljava/util/Collection;

    return-object v0
.end method

.method public getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->union:Z

    if-nez v0, :cond_d

    .line 257
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CacheLabel;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 261
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_c
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .registers 3
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public isAttribute()Z
    .registers 2

    .prologue
    .line 502
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->attribute:Z

    return v0
.end method

.method public isCollection()Z
    .registers 2

    .prologue
    .line 515
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->collection:Z

    return v0
.end method

.method public isData()Z
    .registers 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->data:Z

    return v0
.end method

.method public isInline()Z
    .registers 2

    .prologue
    .line 491
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->inline:Z

    return v0
.end method

.method public isRequired()Z
    .registers 2

    .prologue
    .line 528
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->required:Z

    return v0
.end method

.method public isText()Z
    .registers 2

    .prologue
    .line 478
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->text:Z

    return v0
.end method

.method public isUnion()Z
    .registers 2

    .prologue
    .line 539
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->union:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

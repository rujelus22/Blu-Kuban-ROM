.class Lorg/simpleframework/xml/core/ExtractorFactory$ElementListExtractor;
.super Ljava/lang/Object;
.source "ExtractorFactory.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Extractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/core/Extractor",
        "<",
        "Lorg/simpleframework/xml/ElementList;",
        ">;"
    }
.end annotation


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/Contact;

.field private final union:Lorg/simpleframework/xml/ElementListUnion;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementListUnion;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementListExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 283
    iput-object p2, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementListExtractor;->union:Lorg/simpleframework/xml/ElementListUnion;

    .line 284
    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/ElementList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementListExtractor;->union:Lorg/simpleframework/xml/ElementListUnion;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementListUnion;->value()[Lorg/simpleframework/xml/ElementList;

    move-result-object v0

    .line 298
    array-length v1, v0

    if-lez v1, :cond_e

    .line 299
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 301
    :goto_d
    return-object v0

    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_d
.end method

.method public bridge synthetic getLabel(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .registers 3
    .parameter

    .prologue
    .line 261
    check-cast p1, Lorg/simpleframework/xml/ElementList;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementListExtractor;->getLabel(Lorg/simpleframework/xml/ElementList;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Lorg/simpleframework/xml/ElementList;)Lorg/simpleframework/xml/core/Label;
    .registers 4
    .parameter

    .prologue
    .line 315
    new-instance v0, Lorg/simpleframework/xml/core/ElementListLabel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementListExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-direct {v0, v1, p1}, Lorg/simpleframework/xml/core/ElementListLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementList;)V

    return-object v0
.end method

.method public bridge synthetic getType(Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .registers 3
    .parameter

    .prologue
    .line 261
    check-cast p1, Lorg/simpleframework/xml/ElementList;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementListExtractor;->getType(Lorg/simpleframework/xml/ElementList;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lorg/simpleframework/xml/ElementList;)Ljava/lang/Class;
    .registers 3
    .parameter

    .prologue
    .line 328
    invoke-interface {p1}, Lorg/simpleframework/xml/ElementList;->type()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

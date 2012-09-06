.class Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;
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
        "Lorg/simpleframework/xml/ElementMap;",
        ">;"
    }
.end annotation


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/Contact;

.field private final union:Lorg/simpleframework/xml/ElementMapUnion;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMapUnion;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 362
    iput-object p2, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->union:Lorg/simpleframework/xml/ElementMapUnion;

    .line 363
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
            "Lorg/simpleframework/xml/ElementMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->union:Lorg/simpleframework/xml/ElementMapUnion;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMapUnion;->value()[Lorg/simpleframework/xml/ElementMap;

    move-result-object v0

    .line 377
    array-length v1, v0

    if-lez v1, :cond_e

    .line 378
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 380
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
    .line 340
    check-cast p1, Lorg/simpleframework/xml/ElementMap;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->getLabel(Lorg/simpleframework/xml/ElementMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Lorg/simpleframework/xml/ElementMap;)Lorg/simpleframework/xml/core/Label;
    .registers 4
    .parameter

    .prologue
    .line 394
    new-instance v0, Lorg/simpleframework/xml/core/ElementMapLabel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-direct {v0, v1, p1}, Lorg/simpleframework/xml/core/ElementMapLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMap;)V

    return-object v0
.end method

.method public bridge synthetic getType(Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .registers 3
    .parameter

    .prologue
    .line 340
    check-cast p1, Lorg/simpleframework/xml/ElementMap;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;->getType(Lorg/simpleframework/xml/ElementMap;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lorg/simpleframework/xml/ElementMap;)Ljava/lang/Class;
    .registers 3
    .parameter

    .prologue
    .line 407
    invoke-interface {p1}, Lorg/simpleframework/xml/ElementMap;->valueType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

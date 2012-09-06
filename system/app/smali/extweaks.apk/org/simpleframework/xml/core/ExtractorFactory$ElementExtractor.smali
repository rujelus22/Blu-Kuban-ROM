.class Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;
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
        "Lorg/simpleframework/xml/Element;",
        ">;"
    }
.end annotation


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/Contact;

.field private final union:Lorg/simpleframework/xml/ElementUnion;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementUnion;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 199
    iput-object p2, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->union:Lorg/simpleframework/xml/ElementUnion;

    .line 200
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
            "Lorg/simpleframework/xml/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->union:Lorg/simpleframework/xml/ElementUnion;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementUnion;->value()[Lorg/simpleframework/xml/Element;

    move-result-object v0

    .line 214
    array-length v1, v0

    if-lez v1, :cond_e

    .line 215
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 217
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
    .line 177
    check-cast p1, Lorg/simpleframework/xml/Element;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->getLabel(Lorg/simpleframework/xml/Element;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Lorg/simpleframework/xml/Element;)Lorg/simpleframework/xml/core/Label;
    .registers 4
    .parameter

    .prologue
    .line 231
    new-instance v0, Lorg/simpleframework/xml/core/ElementLabel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-direct {v0, v1, p1}, Lorg/simpleframework/xml/core/ElementLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Element;)V

    return-object v0
.end method

.method public bridge synthetic getType(Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .registers 3
    .parameter

    .prologue
    .line 177
    check-cast p1, Lorg/simpleframework/xml/Element;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->getType(Lorg/simpleframework/xml/Element;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lorg/simpleframework/xml/Element;)Ljava/lang/Class;
    .registers 4
    .parameter

    .prologue
    .line 244
    invoke-interface {p1}, Lorg/simpleframework/xml/Element;->type()Ljava/lang/Class;

    move-result-object v0

    .line 246
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    .line 247
    iget-object v0, p0, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 249
    :cond_e
    return-object v0
.end method

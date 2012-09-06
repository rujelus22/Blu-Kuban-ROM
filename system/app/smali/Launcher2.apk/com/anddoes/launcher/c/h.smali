.class final Lcom/anddoes/launcher/c/h;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/c/g;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/c/g;)V
    .registers 3
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/anddoes/launcher/c/h;->a:Lcom/anddoes/launcher/c/g;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/c/h;->b:Ljava/util/List;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/c/h;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/c/h;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/anddoes/launcher/c/h;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/c/h;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/anddoes/launcher/c/h;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final characters([CII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    return-void
.end method

.method public final endDocument()V
    .registers 1

    .prologue
    .line 276
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    return-void
.end method

.method public final startDocument()V
    .registers 1

    .prologue
    .line 271
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xa

    const/4 v0, 0x1

    .line 282
    const-string v1, "item"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 283
    const-string v0, "component"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string v1, "drawable"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 286
    iget-object v2, p0, Lcom/anddoes/launcher/c/h;->a:Lcom/anddoes/launcher/c/g;

    invoke-static {v2}, Lcom/anddoes/launcher/c/g;->a(Lcom/anddoes/launcher/c/g;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_2c
    :goto_2c
    return-void

    .line 288
    :cond_2d
    const-string v1, "iconback"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 289
    :goto_35
    if-ge v0, v3, :cond_2c

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "img"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 293
    iget-object v2, p0, Lcom/anddoes/launcher/c/h;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 296
    :cond_58
    const-string v1, "iconupon"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 297
    :goto_60
    if-ge v0, v3, :cond_2c

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "img"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 301
    iget-object v2, p0, Lcom/anddoes/launcher/c/h;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 304
    :cond_83
    const-string v0, "scale"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 306
    :try_start_8b
    iget-object v0, p0, Lcom/anddoes/launcher/c/h;->a:Lcom/anddoes/launcher/c/g;

    const-string v1, "factor"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/c/g;->a(Lcom/anddoes/launcher/c/g;F)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9a} :catch_9b

    goto :goto_2c

    :catch_9b
    move-exception v0

    goto :goto_2c
.end method

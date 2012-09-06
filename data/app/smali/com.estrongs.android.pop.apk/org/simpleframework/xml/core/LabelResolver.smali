.class Lorg/simpleframework/xml/core/LabelResolver;
.super Ljava/lang/Object;


# instance fields
.field private final attributes:Lorg/simpleframework/xml/core/LabelMap;

.field private final elements:Lorg/simpleframework/xml/core/LabelMap;

.field private final texts:Lorg/simpleframework/xml/core/LabelMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->elements:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->texts:Lorg/simpleframework/xml/core/LabelMap;

    return-void
.end method

.method private register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 6

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/LabelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    invoke-virtual {p2, v1, p1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_16
    invoke-virtual {p2, v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12
.end method

.method private resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;
    .registers 5

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    if-nez v0, :cond_16

    invoke-virtual {p2, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    :cond_16
    return-object v0
.end method


# virtual methods
.method public register(Lorg/simpleframework/xml/core/Label;)V
    .registers 3

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    :goto_b
    return-void

    :cond_c
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_b

    :cond_18
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_b
.end method

.method public resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;
    .registers 3

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->isText()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    goto :goto_c

    :cond_1a
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelResolver;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/LabelResolver;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    goto :goto_c
.end method

.class Lorg/simpleframework/xml/core/Introspector;
.super Ljava/lang/Object;


# instance fields
.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private label:Lorg/simpleframework/xml/core/Label;

.field private marker:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->marker:Ljava/lang/annotation/Annotation;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    return-void
.end method

.method private getDefault()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private getName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Introspector;->getRoot(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private getRoot(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4

    move-object v1, p1

    :goto_1
    if-nez v1, :cond_5

    const/4 v0, 0x0

    :cond_4
    return-object v0

    :cond_5
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Introspector;->getRoot(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method private getRoot(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v0, Lorg/simpleframework/xml/Root;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-class v0, Lorg/simpleframework/xml/Root;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Root;

    invoke-interface {v0}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    :goto_1e
    return-object v0

    :cond_1f
    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_24
    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Introspector;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    :cond_12
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Introspector;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 4

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Introspector;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v0, Lorg/simpleframework/xml/core/PathParser;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PathParser;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lorg/simpleframework/xml/core/PathParser;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    const-string v2, "."

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathParser;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0}, Lorg/simpleframework/xml/core/Introspector;->getDefault()Ljava/lang/String;

    move-result-object v0

    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    const-class v1, Lorg/simpleframework/xml/Path;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Path;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-interface {v0}, Lorg/simpleframework/xml/Path;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public isEmpty(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "%s on %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/Introspector;->marker:Ljava/lang/annotation/Annotation;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

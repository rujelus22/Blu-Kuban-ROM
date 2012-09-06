.class Lorg/simpleframework/xml/core/Introspector;
.super Ljava/lang/Object;
.source "Introspector.java"


# instance fields
.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private label:Lorg/simpleframework/xml/core/Label;

.field private marker:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->marker:Ljava/lang/annotation/Annotation;

    .line 64
    iput-object p1, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 65
    iput-object p2, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    .line 66
    return-void
.end method

.method private getDefault()Ljava/lang/String;
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 219
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
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Introspector;->getRoot(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_7

    .line 135
    :goto_6
    return-object v0

    .line 133
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private getRoot(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 149
    move-object v1, p1

    .line 151
    :goto_1
    if-eqz v1, :cond_10

    .line 152
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Introspector;->getRoot(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_a

    .line 159
    :goto_9
    return-object v0

    .line 157
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 158
    goto :goto_1

    .line 159
    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getRoot(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
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

    .prologue
    .line 174
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 176
    const-class v0, Lorg/simpleframework/xml/Root;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 177
    const-class v0, Lorg/simpleframework/xml/Root;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Root;

    .line 178
    invoke-interface {v0}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 185
    :goto_1e
    return-object v0

    .line 183
    :cond_1f
    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 185
    :cond_24
    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Introspector;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 106
    :cond_12
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Introspector;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-nez v0, :cond_1a

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Introspector;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_e

    .line 234
    new-instance v0, Lorg/simpleframework/xml/core/PathParser;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PathParser;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    .line 236
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

    .prologue
    .line 197
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v1

    if-nez v1, :cond_12

    .line 200
    invoke-direct {p0}, Lorg/simpleframework/xml/core/Introspector;->getDefault()Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    const-class v1, Lorg/simpleframework/xml/Path;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Path;

    .line 250
    if-nez v0, :cond_e

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_d
    return-object v0

    :cond_e
    invoke-interface {v0}, Lorg/simpleframework/xml/Path;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public isEmpty(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 267
    if-eqz p1, :cond_9

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 270
    :cond_9
    :goto_9
    return v0

    .line 268
    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 283
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

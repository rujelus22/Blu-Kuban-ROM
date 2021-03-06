.class Lorg/simpleframework/xml/core/FieldContact;
.super Ljava/lang/Object;
.source "FieldContact.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Contact;


# instance fields
.field private field:Ljava/lang/reflect/Field;

.field private label:Ljava/lang/annotation/Annotation;

.field private modifier:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/core/FieldContact;->modifier:I

    .line 67
    iput-object p2, p0, Lorg/simpleframework/xml/core/FieldContact;->label:Ljava/lang/annotation/Annotation;

    .line 68
    iput-object p1, p0, Lorg/simpleframework/xml/core/FieldContact;->field:Ljava/lang/reflect/Field;

    .line 69
    return-void
.end method

.method private getName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_a

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_a
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->label:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->label:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 197
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->label:Ljava/lang/annotation/Annotation;

    .line 199
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_a
.end method

.method public getDependent()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->field:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getDependent(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDependents()[Ljava/lang/Class;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->field:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getDependents(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->name:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 151
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->field:Ljava/lang/reflect/Field;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/FieldContact;->getName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->name:Ljava/lang/String;

    .line 153
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isFinal()Z
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lorg/simpleframework/xml/core/FieldContact;->modifier:I

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/FieldContact;->isStatic()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/FieldContact;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isStatic()Z
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lorg/simpleframework/xml/core/FieldContact;->modifier:I

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/FieldContact;->isFinal()Z

    move-result v0

    if-nez v0, :cond_b

    .line 212
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    :cond_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 239
    const-string v0, "field \'%s\' %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/FieldContact;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/FieldContact;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

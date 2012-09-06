.class Lorg/simpleframework/xml/core/FieldScanner;
.super Lorg/simpleframework/xml/core/ContactList;
.source "FieldScanner.java"


# instance fields
.field private final access:Lorg/simpleframework/xml/DefaultType;

.field private final done:Lorg/simpleframework/xml/core/ContactMap;

.field private final factory:Lorg/simpleframework/xml/core/AnnotationFactory;

.field private final hierarchy:Lorg/simpleframework/xml/core/Hierarchy;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/FieldScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/FieldScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;Z)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/simpleframework/xml/core/ContactList;-><init>()V

    .line 105
    new-instance v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/AnnotationFactory;-><init>(Z)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    .line 106
    new-instance v0, Lorg/simpleframework/xml/core/Hierarchy;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Hierarchy;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    .line 107
    new-instance v0, Lorg/simpleframework/xml/core/ContactMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ContactMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    .line 108
    iput-object p2, p0, Lorg/simpleframework/xml/core/FieldScanner;->access:Lorg/simpleframework/xml/DefaultType;

    .line 109
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/Class;)V

    .line 110
    return-void
.end method

.method private build()V
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ContactMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Contact;

    .line 289
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/FieldScanner;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 291
    :cond_16
    return-void
.end method

.method private isStatic(Ljava/lang/reflect/Field;)Z
    .registers 3
    .parameter

    .prologue
    .line 303
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 305
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 306
    const/4 v0, 0x1

    .line 308
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private process(Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_b

    .line 246
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 248
    :cond_b
    return-void
.end method

.method private process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 260
    new-instance v0, Lorg/simpleframework/xml/core/FieldContact;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/FieldContact;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 262
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_f

    .line 263
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 265
    :cond_f
    iget-object v1, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/ContactMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method

.method private remove(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ContactMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method private scan(Ljava/lang/Class;)V
    .registers 5
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Hierarchy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 124
    iget-object v2, p0, Lorg/simpleframework/xml/core/FieldScanner;->access:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    goto :goto_6

    .line 126
    :cond_18
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Hierarchy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 127
    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_1e

    .line 129
    :cond_2e
    invoke-direct {p0}, Lorg/simpleframework/xml/core/FieldScanner;->build()V

    .line 130
    return-void
.end method

.method private scan(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 144
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 145
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/reflect/Field;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 147
    :cond_10
    return-void
.end method

.method private scan(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 177
    sget-object v0, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    if-ne p2, v0, :cond_1e

    .line 178
    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_1e

    aget-object v3, v1, v0

    .line 179
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 181
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/FieldScanner;->isStatic(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 182
    invoke-direct {p0, v3, v4}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    .line 178
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 186
    :cond_1e
    return-void
.end method

.method private scan(Ljava/lang/reflect/Field;)V
    .registers 6
    .parameter

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 160
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 161
    invoke-direct {p0, p1, v3}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 163
    :cond_10
    return-void
.end method

.method private scan(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 198
    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_7

    .line 199
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 201
    :cond_7
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_e

    .line 202
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 204
    :cond_e
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_15

    .line 205
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 207
    :cond_15
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_1c

    .line 208
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 210
    :cond_1c
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_23

    .line 211
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 213
    :cond_23
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2a

    .line 214
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 216
    :cond_2a
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_31

    .line 217
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 219
    :cond_31
    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_38

    .line 220
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 222
    :cond_38
    instance-of v0, p2, Lorg/simpleframework/xml/Transient;

    if-eqz v0, :cond_3f

    .line 223
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->remove(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 225
    :cond_3f
    instance-of v0, p2, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_46

    .line 226
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 228
    :cond_46
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_4d

    .line 229
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 231
    :cond_4d
    return-void
.end method

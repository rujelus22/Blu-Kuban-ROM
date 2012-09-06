.class Lorg/simpleframework/xml/core/MethodScanner;
.super Lorg/simpleframework/xml/core/ContactList;
.source "MethodScanner.java"


# instance fields
.field private final access:Lorg/simpleframework/xml/DefaultType;

.field private final factory:Lorg/simpleframework/xml/core/MethodPartFactory;

.field private final hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

.field private final read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

.field private final type:Ljava/lang/Class;

.field private final write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/MethodScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;Z)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Lorg/simpleframework/xml/core/ContactList;-><init>()V

    .line 137
    new-instance v0, Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/MethodPartFactory;-><init>(Z)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    .line 138
    new-instance v0, Lorg/simpleframework/xml/core/Hierarchy;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Hierarchy;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    .line 139
    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;-><init>(Lorg/simpleframework/xml/core/MethodScanner;Lorg/simpleframework/xml/core/MethodScanner$1;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    .line 140
    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;-><init>(Lorg/simpleframework/xml/core/MethodScanner;Lorg/simpleframework/xml/core/MethodScanner$1;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    .line 141
    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodScanner;->access:Lorg/simpleframework/xml/DefaultType;

    .line 142
    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodScanner;->type:Ljava/lang/Class;

    .line 143
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/Class;)V

    .line 144
    return-void
.end method

.method private build()V
    .registers 4

    .prologue
    .line 395
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/MethodPart;

    .line 398
    if-eqz v1, :cond_6

    .line 399
    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/MethodScanner;->build(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V

    goto :goto_6

    .line 402
    :cond_20
    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/MethodPart;)V
    .registers 3
    .parameter

    .prologue
    .line 437
    new-instance v0, Lorg/simpleframework/xml/core/MethodContact;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;)V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MethodScanner;->add(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->take(Ljava/lang/String;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_c

    .line 420
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodScanner;->build(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    .line 424
    :goto_b
    return-void

    .line 422
    :cond_c
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodScanner;->build(Lorg/simpleframework/xml/core/MethodPart;)V

    goto :goto_b
.end method

.method private build(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 453
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 454
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-interface {p2}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 457
    new-instance v0, Lorg/simpleframework/xml/core/MethodException;

    const-string v2, "Annotations do not match for \'%s\' in %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->type:Ljava/lang/Class;

    aput-object v1, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 459
    :cond_25
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 461
    invoke-interface {p2}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_3d

    .line 462
    new-instance v2, Lorg/simpleframework/xml/core/MethodException;

    const-string v3, "Method types do not match for %s in %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 464
    :cond_3d
    new-instance v0, Lorg/simpleframework/xml/core/MethodContact;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MethodScanner;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method private process(Ljava/lang/reflect/Method;)V
    .registers 5
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v1

    .line 315
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_13

    .line 316
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    .line 318
    :cond_13
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_1c

    .line 319
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    .line 321
    :cond_1c
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_25

    .line 322
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    .line 324
    :cond_25
    return-void
.end method

.method private process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v1

    .line 290
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_13

    .line 291
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    .line 293
    :cond_13
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_1c

    .line 294
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    .line 296
    :cond_1c
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_25

    .line 297
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    .line 299
    :cond_25
    return-void
.end method

.method private process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_9

    .line 339
    invoke-virtual {p2, v0, p1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_9
    return-void
.end method

.method private remove(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v1

    .line 357
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_13

    .line 358
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    .line 360
    :cond_13
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_1c

    .line 361
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    .line 363
    :cond_1c
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v1, v2, :cond_25

    .line 364
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    .line 366
    :cond_25
    return-void
.end method

.method private remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_9

    .line 381
    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_9
    return-void
.end method

.method private scan(Ljava/lang/Class;)V
    .registers 5
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Hierarchy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 158
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->access:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    goto :goto_6

    .line 160
    :cond_18
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Hierarchy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 161
    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_1e

    .line 163
    :cond_2e
    invoke-direct {p0}, Lorg/simpleframework/xml/core/MethodScanner;->build()V

    .line 164
    invoke-direct {p0}, Lorg/simpleframework/xml/core/MethodScanner;->validate()V

    .line 165
    return-void
.end method

.method private scan(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 181
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 182
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/reflect/Method;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 184
    :cond_10
    return-void
.end method

.method private scan(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 217
    sget-object v0, Lorg/simpleframework/xml/DefaultType;->PROPERTY:Lorg/simpleframework/xml/DefaultType;

    if-ne p2, v0, :cond_1c

    .line 218
    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_1c

    aget-object v3, v1, v0

    .line 219
    iget-object v4, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v4, v3}, Lorg/simpleframework/xml/core/MethodPartFactory;->getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v4

    .line 221
    if-eqz v4, :cond_19

    .line 222
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;)V

    .line 218
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 226
    :cond_1c
    return-void
.end method

.method private scan(Ljava/lang/reflect/Method;)V
    .registers 6
    .parameter

    .prologue
    .line 198
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 200
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 201
    invoke-direct {p0, p1, v3}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 203
    :cond_10
    return-void
.end method

.method private scan(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 240
    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_7

    .line 241
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 243
    :cond_7
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_e

    .line 244
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 246
    :cond_e
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_15

    .line 247
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 249
    :cond_15
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_1c

    .line 250
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 252
    :cond_1c
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_23

    .line 253
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 255
    :cond_23
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2a

    .line 256
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 258
    :cond_2a
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_31

    .line 259
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 261
    :cond_31
    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_38

    .line 262
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 264
    :cond_38
    instance-of v0, p2, Lorg/simpleframework/xml/Transient;

    if-eqz v0, :cond_3f

    .line 265
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 267
    :cond_3f
    instance-of v0, p2, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_46

    .line 268
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 270
    :cond_46
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_4d

    .line 271
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 273
    :cond_4d
    return-void
.end method

.method private validate()V
    .registers 4

    .prologue
    .line 476
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 477
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/MethodPart;

    .line 479
    if-eqz v1, :cond_6

    .line 480
    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/MethodScanner;->validate(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V

    goto :goto_6

    .line 483
    :cond_20
    return-void
.end method

.method private validate(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->take(Ljava/lang/String;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 498
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 500
    if-nez v0, :cond_1f

    .line 501
    new-instance v0, Lorg/simpleframework/xml/core/MethodException;

    const-string v2, "No matching get method for %s in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/MethodScanner;->type:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 503
    :cond_1f
    return-void
.end method

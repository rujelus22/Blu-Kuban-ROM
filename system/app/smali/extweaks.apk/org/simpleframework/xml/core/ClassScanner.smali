.class Lorg/simpleframework/xml/core/ClassScanner;
.super Ljava/lang/Object;
.source "ClassScanner.java"


# instance fields
.field private access:Lorg/simpleframework/xml/Default;

.field private commit:Lorg/simpleframework/xml/core/Function;

.field private complete:Lorg/simpleframework/xml/core/Function;

.field private decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

.field private namespace:Lorg/simpleframework/xml/Namespace;

.field private order:Lorg/simpleframework/xml/Order;

.field private persist:Lorg/simpleframework/xml/core/Function;

.field private replace:Lorg/simpleframework/xml/core/Function;

.field private resolve:Lorg/simpleframework/xml/core/Function;

.field private root:Lorg/simpleframework/xml/Root;

.field private scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

.field private validate:Lorg/simpleframework/xml/core/Function;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorScanner;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/ConstructorScanner;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

    .line 113
    new-instance v0, Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    .line 114
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->scan(Ljava/lang/Class;)V

    .line 115
    return-void
.end method

.method private access(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 375
    const-class v0, Lorg/simpleframework/xml/Default;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 376
    const-class v0, Lorg/simpleframework/xml/Default;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Default;

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->access:Lorg/simpleframework/xml/Default;

    .line 378
    :cond_12
    return-void
.end method

.method private commit(Ljava/lang/reflect/Method;)V
    .registers 3
    .parameter

    .prologue
    .line 501
    const-class v0, Lorg/simpleframework/xml/core/Commit;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_e

    .line 504
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->commit:Lorg/simpleframework/xml/core/Function;

    .line 506
    :cond_e
    return-void
.end method

.method private complete(Ljava/lang/reflect/Method;)V
    .registers 3
    .parameter

    .prologue
    .line 549
    const-class v0, Lorg/simpleframework/xml/core/Complete;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_e

    .line 552
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->complete:Lorg/simpleframework/xml/core/Function;

    .line 554
    :cond_e
    return-void
.end method

.method private getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;
    .registers 4
    .parameter

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->isContextual(Ljava/lang/reflect/Method;)Z

    move-result v0

    .line 568
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_e

    .line 569
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 571
    :cond_e
    new-instance v1, Lorg/simpleframework/xml/core/Function;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/Function;-><init>(Ljava/lang/reflect/Method;Z)V

    return-object v1
.end method

.method private global(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    if-nez v0, :cond_7

    .line 306
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->namespace(Ljava/lang/Class;)V

    .line 308
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    if-nez v0, :cond_e

    .line 309
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->root(Ljava/lang/Class;)V

    .line 311
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->order:Lorg/simpleframework/xml/Order;

    if-nez v0, :cond_15

    .line 312
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->order(Ljava/lang/Class;)V

    .line 314
    :cond_15
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->access:Lorg/simpleframework/xml/Default;

    if-nez v0, :cond_1c

    .line 315
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->access(Ljava/lang/Class;)V

    .line 317
    :cond_1c
    return-void
.end method

.method private isContextual(Ljava/lang/reflect/Method;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 584
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 586
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 587
    const-class v2, Ljava/util/Map;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 589
    :cond_11
    return v0
.end method

.method private namespace(Ljava/lang/Class;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 389
    const-class v0, Lorg/simpleframework/xml/Namespace;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 390
    const-class v0, Lorg/simpleframework/xml/Namespace;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Namespace;

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    .line 392
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    if-eqz v0, :cond_1d

    .line 393
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ClassScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    .line 396
    :cond_1d
    return-void
.end method

.method private order(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 361
    const-class v0, Lorg/simpleframework/xml/Order;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 362
    const-class v0, Lorg/simpleframework/xml/Order;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Order;

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->order:Lorg/simpleframework/xml/Order;

    .line 364
    :cond_12
    return-void
.end method

.method private persist(Ljava/lang/reflect/Method;)V
    .registers 3
    .parameter

    .prologue
    .line 533
    const-class v0, Lorg/simpleframework/xml/core/Persist;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_e

    .line 536
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->persist:Lorg/simpleframework/xml/core/Function;

    .line 538
    :cond_e
    return-void
.end method

.method private process(Ljava/lang/Class;)V
    .registers 4
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    if-eqz v0, :cond_b

    .line 427
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ClassScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->set(Lorg/simpleframework/xml/Namespace;)V

    .line 429
    :cond_b
    return-void
.end method

.method private replace(Ljava/lang/reflect/Method;)V
    .registers 3
    .parameter

    .prologue
    .line 469
    const-class v0, Lorg/simpleframework/xml/core/Replace;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_e

    .line 472
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->replace:Lorg/simpleframework/xml/core/Function;

    .line 474
    :cond_e
    return-void
.end method

.method private resolve(Ljava/lang/reflect/Method;)V
    .registers 3
    .parameter

    .prologue
    .line 485
    const-class v0, Lorg/simpleframework/xml/core/Resolve;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_e

    .line 488
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->resolve:Lorg/simpleframework/xml/core/Function;

    .line 490
    :cond_e
    return-void
.end method

.method private root(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 347
    const-class v0, Lorg/simpleframework/xml/Root;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 348
    const-class v0, Lorg/simpleframework/xml/Root;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Root;

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    .line 350
    :cond_12
    return-void
.end method

.method private scan(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 284
    move-object v0, p1

    .line 286
    :goto_1
    if-eqz v0, :cond_11

    .line 287
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ClassScanner;->global(Ljava/lang/Class;)V

    .line 288
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ClassScanner;->scope(Ljava/lang/Class;)V

    .line 289
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/ClassScanner;->scan(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 292
    :cond_11
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->process(Ljava/lang/Class;)V

    .line 293
    return-void
.end method

.method private scan(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 333
    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 334
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/ClassScanner;->scan(Ljava/lang/reflect/Method;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 336
    :cond_10
    return-void
.end method

.method private scan(Ljava/lang/reflect/Method;)V
    .registers 3
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->commit:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_7

    .line 441
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->commit(Ljava/lang/reflect/Method;)V

    .line 443
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->validate:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_e

    .line 444
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->validate(Ljava/lang/reflect/Method;)V

    .line 446
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->persist:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_15

    .line 447
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->persist(Ljava/lang/reflect/Method;)V

    .line 449
    :cond_15
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->complete:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_1c

    .line 450
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->complete(Ljava/lang/reflect/Method;)V

    .line 452
    :cond_1c
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->replace:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_23

    .line 453
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->replace(Ljava/lang/reflect/Method;)V

    .line 455
    :cond_23
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->resolve:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_2a

    .line 456
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->resolve(Ljava/lang/reflect/Method;)V

    .line 458
    :cond_2a
    return-void
.end method

.method private scope(Ljava/lang/Class;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 407
    const-class v0, Lorg/simpleframework/xml/NamespaceList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 408
    const-class v0, Lorg/simpleframework/xml/NamespaceList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/NamespaceList;

    .line 409
    invoke-interface {v0}, Lorg/simpleframework/xml/NamespaceList;->value()[Lorg/simpleframework/xml/Namespace;

    move-result-object v1

    .line 411
    array-length v2, v1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_22

    aget-object v3, v1, v0

    .line 412
    iget-object v4, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v4, v3}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 415
    :cond_22
    return-void
.end method

.method private validate(Ljava/lang/reflect/Method;)V
    .registers 3
    .parameter

    .prologue
    .line 517
    const-class v0, Lorg/simpleframework/xml/core/Validate;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_e

    .line 520
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->validate:Lorg/simpleframework/xml/core/Function;

    .line 522
    :cond_e
    return-void
.end method


# virtual methods
.method public getCommit()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->commit:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public getComplete()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->complete:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public getCreator()Lorg/simpleframework/xml/core/Creator;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ConstructorScanner;->getCreator()Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    return-object v0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    return-object v0
.end method

.method public getDefault()Lorg/simpleframework/xml/Default;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->access:Lorg/simpleframework/xml/Default;

    return-object v0
.end method

.method public getOrder()Lorg/simpleframework/xml/Order;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->order:Lorg/simpleframework/xml/Order;

    return-object v0
.end method

.method public getPersist()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->persist:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public getReplace()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->replace:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public getResolve()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->resolve:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public getRoot()Lorg/simpleframework/xml/Root;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    return-object v0
.end method

.method public getValidate()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->validate:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public isStrict()Z
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    if-eqz v0, :cond_b

    .line 269
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    invoke-interface {v0}, Lorg/simpleframework/xml/Root;->strict()Z

    move-result v0

    .line 271
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

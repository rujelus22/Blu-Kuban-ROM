.class Lorg/simpleframework/xml/core/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Policy;


# instance fields
.field private access:Lorg/simpleframework/xml/DefaultType;

.field private builder:Lorg/simpleframework/xml/core/StructureBuilder;

.field private name:Ljava/lang/String;

.field private required:Z

.field private scanner:Lorg/simpleframework/xml/core/ClassScanner;

.field private structure:Lorg/simpleframework/xml/core/Structure;

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lorg/simpleframework/xml/core/ClassScanner;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/ClassScanner;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    .line 89
    new-instance v0, Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/core/StructureBuilder;-><init>(Lorg/simpleframework/xml/core/Scanner;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    .line 90
    iput-object p1, p0, Lorg/simpleframework/xml/core/Scanner;->type:Ljava/lang/Class;

    .line 91
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Scanner;->scan(Ljava/lang/Class;)V

    .line 92
    return-void
.end method

.method private access(Ljava/lang/Class;)V
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
    .line 429
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getDefault()Lorg/simpleframework/xml/Default;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_14

    .line 432
    invoke-interface {v0}, Lorg/simpleframework/xml/Default;->required()Z

    move-result v1

    iput-boolean v1, p0, Lorg/simpleframework/xml/core/Scanner;->required:Z

    .line 433
    invoke-interface {v0}, Lorg/simpleframework/xml/Default;->value()Lorg/simpleframework/xml/DefaultType;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->access:Lorg/simpleframework/xml/DefaultType;

    .line 435
    :cond_14
    return-void
.end method

.method private commit(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->structure:Lorg/simpleframework/xml/core/Structure;

    if-nez v0, :cond_c

    .line 366
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/StructureBuilder;->build(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Structure;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->structure:Lorg/simpleframework/xml/core/Structure;

    .line 368
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    .line 369
    return-void
.end method

.method private field(Ljava/lang/Class;)V
    .registers 6
    .parameter

    .prologue
    .line 459
    new-instance v0, Lorg/simpleframework/xml/core/FieldScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Scanner;->access:Lorg/simpleframework/xml/DefaultType;

    iget-boolean v2, p0, Lorg/simpleframework/xml/core/Scanner;->required:Z

    invoke-direct {v0, p1, v1, v2}, Lorg/simpleframework/xml/core/FieldScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;Z)V

    .line 461
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Contact;

    .line 462
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 464
    if-eqz v2, :cond_d

    .line 465
    iget-object v3, p0, Lorg/simpleframework/xml/core/Scanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-virtual {v3, v0, v2}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    goto :goto_d

    .line 468
    :cond_25
    return-void
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 380
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/StructureBuilder;->assemble(Ljava/lang/Class;)V

    .line 381
    return-void
.end method

.method private root(Ljava/lang/Class;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 406
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getRoot()Lorg/simpleframework/xml/Root;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_20

    .line 410
    invoke-interface {v0}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Scanner;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 413
    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->name:Ljava/lang/String;

    .line 417
    :cond_20
    return-void
.end method

.method private scan(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Scanner;->root(Ljava/lang/Class;)V

    .line 348
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Scanner;->order(Ljava/lang/Class;)V

    .line 349
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Scanner;->access(Ljava/lang/Class;)V

    .line 350
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Scanner;->field(Ljava/lang/Class;)V

    .line 351
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Scanner;->method(Ljava/lang/Class;)V

    .line 352
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Scanner;->validate(Ljava/lang/Class;)V

    .line 353
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Scanner;->commit(Ljava/lang/Class;)V

    .line 354
    return-void
.end method

.method private validate(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/StructureBuilder;->validate(Ljava/lang/Class;)V

    .line 394
    return-void
.end method


# virtual methods
.method public getCaller(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Caller;
    .registers 3
    .parameter

    .prologue
    .line 140
    new-instance v0, Lorg/simpleframework/xml/core/Caller;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/core/Caller;-><init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Context;)V

    return-object v0
.end method

.method public getCommit()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getCommit()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    return-object v0
.end method

.method public getComplete()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getComplete()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Lorg/simpleframework/xml/core/Creator;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getCreator()Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    return-object v0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Lorg/simpleframework/xml/Order;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object v0

    return-object v0
.end method

.method public getPersist()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getPersist()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    return-object v0
.end method

.method public getReplace()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getReplace()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    return-object v0
.end method

.method public getResolve()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getResolve()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    return-object v0
.end method

.method public getRevision()Lorg/simpleframework/xml/Version;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->structure:Lorg/simpleframework/xml/core/Structure;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Structure;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object v0

    return-object v0
.end method

.method public getSection(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Section;
    .registers 3
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->structure:Lorg/simpleframework/xml/core/Structure;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Structure;->getSection(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    return-object v0
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->structure:Lorg/simpleframework/xml/core/Structure;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Structure;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getValidate()Lorg/simpleframework/xml/core/Function;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getValidate()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Lorg/simpleframework/xml/core/Label;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->structure:Lorg/simpleframework/xml/core/Structure;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Structure;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->getRoot()Lorg/simpleframework/xml/Root;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPrimitive()Z
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->structure:Lorg/simpleframework/xml/core/Structure;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Structure;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isStrict()Z
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lorg/simpleframework/xml/core/Scanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ClassScanner;->isStrict()Z

    move-result v0

    return v0
.end method

.method public method(Ljava/lang/Class;)V
    .registers 6
    .parameter

    .prologue
    .line 478
    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Scanner;->access:Lorg/simpleframework/xml/DefaultType;

    iget-boolean v2, p0, Lorg/simpleframework/xml/core/Scanner;->required:Z

    invoke-direct {v0, p1, v1, v2}, Lorg/simpleframework/xml/core/MethodScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;Z)V

    .line 480
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Contact;

    .line 481
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 483
    if-eqz v2, :cond_d

    .line 484
    iget-object v3, p0, Lorg/simpleframework/xml/core/Scanner;->builder:Lorg/simpleframework/xml/core/StructureBuilder;

    invoke-virtual {v3, v0, v2}, Lorg/simpleframework/xml/core/StructureBuilder;->process(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    goto :goto_d

    .line 487
    :cond_25
    return-void
.end method

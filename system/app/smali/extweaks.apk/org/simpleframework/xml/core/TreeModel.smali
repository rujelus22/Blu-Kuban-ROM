.class Lorg/simpleframework/xml/core/TreeModel;
.super Ljava/lang/Object;
.source "TreeModel.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Model;


# instance fields
.field private attributes:Lorg/simpleframework/xml/core/LabelMap;

.field private elements:Lorg/simpleframework/xml/core/LabelMap;

.field private expression:Lorg/simpleframework/xml/core/Expression;

.field private index:I

.field private models:Lorg/simpleframework/xml/core/ModelMap;

.field private name:Ljava/lang/String;

.field private order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

.field private policy:Lorg/simpleframework/xml/core/Policy;

.field private prefix:Ljava/lang/String;

.field private text:Lorg/simpleframework/xml/core/Label;

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Policy;Ljava/lang/Class;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 106
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/simpleframework/xml/core/TreeModel;-><init>(Lorg/simpleframework/xml/core/Policy;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Policy;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    .line 122
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 123
    new-instance v0, Lorg/simpleframework/xml/core/ModelMap;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/core/ModelMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    .line 124
    new-instance v0, Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/TreeModel$OrderList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    .line 125
    iput-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->policy:Lorg/simpleframework/xml/core/Policy;

    .line 126
    iput-object p4, p0, Lorg/simpleframework/xml/core/TreeModel;->prefix:Ljava/lang/String;

    .line 127
    iput p5, p0, Lorg/simpleframework/xml/core/TreeModel;->index:I

    .line 128
    iput-object p3, p0, Lorg/simpleframework/xml/core/TreeModel;->name:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lorg/simpleframework/xml/core/TreeModel;->type:Ljava/lang/Class;

    .line 130
    return-void
.end method

.method private create(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    new-instance v0, Lorg/simpleframework/xml/core/TreeModel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->policy:Lorg/simpleframework/xml/core/Policy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->type:Ljava/lang/Class;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/simpleframework/xml/core/TreeModel;-><init>(Lorg/simpleframework/xml/core/Policy;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 575
    if-eqz p1, :cond_18

    .line 576
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/ModelMap;->register(Ljava/lang/String;Lorg/simpleframework/xml/core/Model;)V

    .line 577
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/TreeModel$OrderList;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_18
    return-object v0
.end method

.method private validateAttributes(Ljava/lang/Class;)V
    .registers 7
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    .line 474
    if-nez v1, :cond_a

    .line 475
    new-instance v1, Lorg/simpleframework/xml/core/AttributeException;

    const-string v2, "Ordered attribute \'%s\' does not exist in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 478
    :cond_31
    return-void
.end method

.method private validateElements(Ljava/lang/Class;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 489
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ModelList;

    .line 493
    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    .line 495
    if-nez v1, :cond_3b

    if-nez v2, :cond_3b

    .line 496
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Ordered element \'%s\' does not exist in %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p1, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 498
    :cond_3b
    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 499
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/ModelList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 500
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Element \'%s\' is also a path name in %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p1, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 504
    :cond_53
    return-void
.end method

.method private validateExpression(Lorg/simpleframework/xml/core/Label;)V
    .registers 8
    .parameter

    .prologue
    .line 415
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-eqz v1, :cond_2e

    .line 418
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Expression;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Expression;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 422
    new-instance v2, Lorg/simpleframework/xml/core/PathException;

    const-string v3, "Path \'%s\' does not match \'%s\' in %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->type:Ljava/lang/Class;

    aput-object v1, v4, v0

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 425
    :cond_2e
    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    .line 427
    :cond_30
    return-void
.end method

.method private validateExpressions(Ljava/lang/Class;)V
    .registers 4
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 391
    if-eqz v0, :cond_6

    .line 392
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/TreeModel;->validateExpression(Lorg/simpleframework/xml/core/Label;)V

    goto :goto_6

    .line 395
    :cond_18
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 396
    if-eqz v0, :cond_1e

    .line 397
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/TreeModel;->validateExpression(Lorg/simpleframework/xml/core/Label;)V

    goto :goto_1e

    .line 400
    :cond_30
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_39

    .line 401
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/TreeModel;->validateExpression(Lorg/simpleframework/xml/core/Label;)V

    .line 403
    :cond_39
    return-void
.end method

.method private validateModels(Ljava/lang/Class;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 443
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    .line 446
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    .line 447
    if-eqz v0, :cond_50

    .line 448
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getName()Ljava/lang/String;

    move-result-object v6

    .line 449
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getIndex()I

    move-result v7

    .line 451
    add-int/lit8 v3, v1, 0x1

    if-eq v7, v1, :cond_49

    .line 452
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const-string v1, "Path section \'%s[%s]\' is out of sequence in %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    aput-object p1, v3, v2

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 454
    :cond_49
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Model;->validate(Ljava/lang/Class;)V

    move v0, v3

    :goto_4d
    move v1, v0

    .line 455
    goto :goto_18

    .line 458
    :cond_4f
    return-void

    :cond_50
    move v0, v1

    goto :goto_4d
.end method

.method private validateText(Ljava/lang/Class;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 370
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_35

    .line 371
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 372
    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    const-string v1, "Text annotation %s used with elements in %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 374
    :cond_1f
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TreeModel;->isComposite()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 375
    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    const-string v1, "Text annotation %s can not be used with paths in %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 378
    :cond_35
    return-void
.end method


# virtual methods
.method public buildAttributes(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/LabelMap;
    .registers 3
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->getLabels(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    return-object v0
.end method

.method public buildElements(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/LabelMap;
    .registers 3
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->getLabels(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    return-object v0
.end method

.method public buildModels(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/ModelMap;
    .registers 3
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ModelMap;->getModels(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 679
    iget v0, p0, Lorg/simpleframework/xml/core/TreeModel;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public isAttribute(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isComposite()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 591
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    .line 592
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    .line 593
    if-eqz v0, :cond_17

    .line 594
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    .line 600
    :goto_2c
    return v0

    :cond_2d
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v1

    goto :goto_2c

    :cond_37
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public isElement(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 612
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v1, :cond_6

    .line 621
    :cond_5
    :goto_5
    return v0

    .line 615
    :cond_6
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/LabelMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 618
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/LabelMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 621
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TreeModel;->isComposite()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isModel(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ModelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/TreeModel$OrderList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 340
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/ModelMap;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;
    .registers 5
    .parameter

    .prologue
    .line 143
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v1

    .line 145
    invoke-virtual {p0, v0, v1}, Lorg/simpleframework/xml/core/TreeModel;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    .line 147
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 148
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lorg/simpleframework/xml/core/Expression;->getPath(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object v1

    .line 150
    if-eqz v0, :cond_1e

    .line 151
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Model;->lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    .line 154
    :cond_1e
    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0, p1, p3}, Lorg/simpleframework/xml/core/ModelMap;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    .line 554
    if-nez v0, :cond_c

    .line 555
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/TreeModel;->create(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    .line 557
    :cond_c
    return-object v0
.end method

.method public register(Lorg/simpleframework/xml/core/Label;)V
    .registers 3
    .parameter

    .prologue
    .line 516
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 517
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->registerAttribute(Lorg/simpleframework/xml/core/Label;)V

    .line 523
    :goto_9
    return-void

    .line 518
    :cond_a
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 519
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->registerText(Lorg/simpleframework/xml/core/Label;)V

    goto :goto_9

    .line 521
    :cond_14
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->registerElement(Lorg/simpleframework/xml/core/Label;)V

    goto :goto_9
.end method

.method public registerAttribute(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public registerAttribute(Lorg/simpleframework/xml/core/Label;)V
    .registers 7
    .parameter

    .prologue
    .line 212
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 215
    new-instance v1, Lorg/simpleframework/xml/core/AttributeException;

    const-string v2, "Duplicate annotation of name \'%s\' on %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 217
    :cond_1d
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public registerElement(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/TreeModel$OrderList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 168
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/TreeModel$OrderList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_d
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public registerElement(Lorg/simpleframework/xml/core/Label;)V
    .registers 7
    .parameter

    .prologue
    .line 230
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 233
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Duplicate annotation of name \'%s\' on %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 235
    :cond_1d
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/TreeModel$OrderList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 236
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/TreeModel$OrderList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_2a
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public registerText(Lorg/simpleframework/xml/core/Label;)V
    .registers 6
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_12

    .line 197
    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    const-string v1, "Duplicate text annotation on %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 199
    :cond_12
    iput-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    .line 200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 690
    const-string v0, "model \'%s[%s]\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/TreeModel;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/simpleframework/xml/core/TreeModel;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateExpressions(Ljava/lang/Class;)V

    .line 355
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateAttributes(Ljava/lang/Class;)V

    .line 356
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateElements(Ljava/lang/Class;)V

    .line 357
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateModels(Ljava/lang/Class;)V

    .line 358
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateText(Ljava/lang/Class;)V

    .line 359
    return-void
.end method

.class public Lorg/dom4j/tree/DefaultElement;
.super Lorg/dom4j/tree/AbstractElement;
.source "DefaultElement.java"


# static fields
.field private static final transient DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;


# instance fields
.field private attributes:Ljava/lang/Object;

.field private content:Ljava/lang/Object;

.field private parentBranch:Lorg/dom4j/Branch;

.field private qname:Lorg/dom4j/QName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 36
    sput-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 61
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .registers 4
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 77
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .registers 2
    .parameter "qname"

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .registers 4
    .parameter "qname"
    .parameter "attributeCount"

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 71
    const/4 v0, 0x1

    if-le p2, v0, :cond_f

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 74
    :cond_f
    return-void
.end method


# virtual methods
.method public add(Lorg/dom4j/Attribute;)V
    .registers 6
    .parameter "attribute"

    .prologue
    .line 828
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 829
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "The Attribute already has an existing parent \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 830
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 829
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, message:Ljava/lang/String;
    new-instance v2, Lorg/dom4j/IllegalAddException;

    invoke-direct {v2, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v2

    .line 835
    .end local v0           #message:Ljava/lang/String;
    :cond_29
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3d

    .line 839
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 841
    .local v1, oldAttribute:Lorg/dom4j/Attribute;
    if-eqz v1, :cond_3c

    .line 842
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/DefaultElement;->remove(Lorg/dom4j/Attribute;)Z

    .line 853
    .end local v1           #oldAttribute:Lorg/dom4j/Attribute;
    :cond_3c
    :goto_3c
    return-void

    .line 845
    :cond_3d
    iget-object v2, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    if-nez v2, :cond_47

    .line 846
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 851
    :goto_43
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_3c

    .line 848
    :cond_47
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43
.end method

.method protected addNewNode(Lorg/dom4j/Node;)V
    .registers 5
    .parameter "node"

    .prologue
    .line 901
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 903
    .local v0, contentShadow:Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 904
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 921
    :goto_6
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    .line 922
    return-void

    .line 906
    :cond_a
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_15

    move-object v1, v0

    .line 907
    check-cast v1, Ljava/util/List;

    .line 909
    .local v1, list:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 911
    .end local v1           #list:Ljava/util/List;
    :cond_15
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createContentList()Ljava/util/List;

    move-result-object v1

    .line 913
    .restart local v1       #list:Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    goto :goto_6
.end method

.method public additionalNamespaces()Ljava/util/List;
    .registers 9

    .prologue
    .line 327
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 329
    .local v1, contentShadow:Ljava/lang/Object;
    instance-of v7, v1, Ljava/util/List;

    if-eqz v7, :cond_30

    move-object v3, v1

    .line 330
    check-cast v3, Ljava/util/List;

    .line 332
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 334
    .local v6, size:I
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 336
    .local v0, answer:Lorg/dom4j/tree/BackedList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-lt v2, v6, :cond_15

    .line 359
    .end local v0           #answer:Lorg/dom4j/tree/BackedList;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v6           #size:I
    :goto_14
    return-object v0

    .line 337
    .restart local v0       #answer:Lorg/dom4j/tree/BackedList;
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;
    .restart local v6       #size:I
    :cond_15
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 339
    .local v5, object:Ljava/lang/Object;
    instance-of v7, v5, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_2d

    move-object v4, v5

    .line 340
    check-cast v4, Lorg/dom4j/Namespace;

    .line 342
    .local v4, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 343
    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 336
    .end local v4           #namespace:Lorg/dom4j/Namespace;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 350
    .end local v0           #answer:Lorg/dom4j/tree/BackedList;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v5           #object:Ljava/lang/Object;
    .end local v6           #size:I
    :cond_30
    instance-of v7, v1, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_4b

    move-object v4, v1

    .line 351
    check-cast v4, Lorg/dom4j/Namespace;

    .line 353
    .restart local v4       #namespace:Lorg/dom4j/Namespace;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 354
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_14

    .line 357
    :cond_46
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    .line 359
    .end local v4           #namespace:Lorg/dom4j/Namespace;
    :cond_4b
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_14
.end method

.method public additionalNamespaces(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .parameter "defaultNamespaceURI"

    .prologue
    .line 365
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 367
    .local v1, contentShadow:Ljava/lang/Object;
    instance-of v7, v1, Ljava/util/List;

    if-eqz v7, :cond_30

    move-object v3, v1

    .line 368
    check-cast v3, Ljava/util/List;

    .line 370
    .local v3, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 372
    .local v0, answer:Lorg/dom4j/tree/BackedList;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 374
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-lt v2, v6, :cond_15

    .line 397
    .end local v0           #answer:Lorg/dom4j/tree/BackedList;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v6           #size:I
    :goto_14
    return-object v0

    .line 375
    .restart local v0       #answer:Lorg/dom4j/tree/BackedList;
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;
    .restart local v6       #size:I
    :cond_15
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 377
    .local v5, object:Ljava/lang/Object;
    instance-of v7, v5, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_2d

    move-object v4, v5

    .line 378
    check-cast v4, Lorg/dom4j/Namespace;

    .line 380
    .local v4, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {v4}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 381
    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 374
    .end local v4           #namespace:Lorg/dom4j/Namespace;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 388
    .end local v0           #answer:Lorg/dom4j/tree/BackedList;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v5           #object:Ljava/lang/Object;
    .end local v6           #size:I
    :cond_30
    instance-of v7, v1, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_46

    move-object v4, v1

    .line 389
    check-cast v4, Lorg/dom4j/Namespace;

    .line 391
    .restart local v4       #namespace:Lorg/dom4j/Namespace;
    invoke-virtual {v4}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_46

    .line 392
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    .line 397
    .end local v4           #namespace:Lorg/dom4j/Namespace;
    :cond_46
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_14
.end method

.method public attribute(I)Lorg/dom4j/Attribute;
    .registers 5
    .parameter "index"

    .prologue
    .line 746
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 748
    .local v0, attributesShadow:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_10

    move-object v1, v0

    .line 749
    check-cast v1, Ljava/util/List;

    .line 751
    .local v1, list:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Attribute;

    .line 755
    .end local v0           #attributesShadow:Ljava/lang/Object;
    .end local v1           #list:Ljava/util/List;
    :goto_f
    return-object v2

    .line 752
    .restart local v0       #attributesShadow:Ljava/lang/Object;
    :cond_10
    if-eqz v0, :cond_18

    if-nez p1, :cond_18

    .line 753
    check-cast v0, Lorg/dom4j/Attribute;

    .end local v0           #attributesShadow:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f

    .line 755
    .restart local v0       #attributesShadow:Ljava/lang/Object;
    :cond_18
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .registers 8
    .parameter "name"

    .prologue
    .line 772
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 774
    .local v1, attributesShadow:Ljava/lang/Object;
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_25

    move-object v3, v1

    .line 775
    check-cast v3, Ljava/util/List;

    .line 777
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 779
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-lt v2, v4, :cond_12

    .line 794
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v4           #size:I
    :cond_10
    const/4 v0, 0x0

    :cond_11
    :goto_11
    return-object v0

    .line 780
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;
    .restart local v4       #size:I
    :cond_12
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 782
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 779
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 786
    .end local v0           #attribute:Lorg/dom4j/Attribute;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v4           #size:I
    :cond_25
    if-eqz v1, :cond_10

    move-object v0, v1

    .line 787
    check-cast v0, Lorg/dom4j/Attribute;

    .line 789
    .restart local v0       #attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_11
.end method

.method public attribute(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Attribute;
    .registers 4
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 824
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .registers 8
    .parameter "qName"

    .prologue
    .line 798
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 800
    .local v1, attributesShadow:Ljava/lang/Object;
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_25

    move-object v3, v1

    .line 801
    check-cast v3, Ljava/util/List;

    .line 803
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 805
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-lt v2, v4, :cond_12

    .line 820
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v4           #size:I
    :cond_10
    const/4 v0, 0x0

    :cond_11
    :goto_11
    return-object v0

    .line 806
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;
    .restart local v4       #size:I
    :cond_12
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 808
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 805
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 812
    .end local v0           #attribute:Lorg/dom4j/Attribute;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v4           #size:I
    :cond_25
    if-eqz v1, :cond_10

    move-object v0, v1

    .line 813
    check-cast v0, Lorg/dom4j/Attribute;

    .line 815
    .restart local v0       #attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_11
.end method

.method public attributeCount()I
    .registers 4

    .prologue
    .line 760
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 762
    .local v0, attributesShadow:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_e

    move-object v1, v0

    .line 763
    check-cast v1, Ljava/util/List;

    .line 765
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 767
    .end local v1           #list:Ljava/util/List;
    :goto_d
    return v2

    :cond_e
    if-eqz v0, :cond_12

    const/4 v2, 0x1

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public attributeIterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 732
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 734
    .local v0, attributesShadow:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_e

    move-object v1, v0

    .line 735
    check-cast v1, Ljava/util/List;

    .line 737
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 741
    .end local v1           #list:Ljava/util/List;
    :goto_d
    return-object v2

    .line 738
    :cond_e
    if-eqz v0, :cond_15

    .line 739
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    goto :goto_d

    .line 741
    :cond_15
    sget-object v2, Lorg/dom4j/tree/DefaultElement;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_d
.end method

.method protected attributeList()Ljava/util/List;
    .registers 4

    .prologue
    .line 966
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 968
    .local v0, attributesShadow:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_a

    .line 969
    check-cast v0, Ljava/util/List;

    .end local v0           #attributesShadow:Ljava/lang/Object;
    move-object v1, v0

    .line 983
    :goto_9
    return-object v1

    .line 970
    .restart local v0       #attributesShadow:Ljava/lang/Object;
    :cond_a
    if-eqz v0, :cond_16

    .line 971
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createAttributeList()Ljava/util/List;

    move-result-object v1

    .line 973
    .local v1, list:Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_9

    .line 979
    .end local v1           #list:Ljava/util/List;
    :cond_16
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createAttributeList()Ljava/util/List;

    move-result-object v1

    .line 981
    .restart local v1       #list:Ljava/util/List;
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_9
.end method

.method protected attributeList(I)Ljava/util/List;
    .registers 5
    .parameter "size"

    .prologue
    .line 988
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 990
    .local v0, attributesShadow:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_a

    .line 991
    check-cast v0, Ljava/util/List;

    .end local v0           #attributesShadow:Ljava/lang/Object;
    move-object v1, v0

    .line 1005
    :goto_9
    return-object v1

    .line 992
    .restart local v0       #attributesShadow:Ljava/lang/Object;
    :cond_a
    if-eqz v0, :cond_16

    .line 993
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v1

    .line 995
    .local v1, list:Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_9

    .line 1001
    .end local v1           #list:Ljava/util/List;
    :cond_16
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v1

    .line 1003
    .restart local v1       #list:Ljava/util/List;
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_9
.end method

.method public attributes()Ljava/util/List;
    .registers 3

    .prologue
    .line 720
    new-instance v0, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method public clearContent()V
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 640
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentRemoved()V

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 644
    :cond_a
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-super {p0}, Lorg/dom4j/tree/AbstractElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/DefaultElement;

    .line 186
    .local v0, answer:Lorg/dom4j/tree/DefaultElement;
    if-eq v0, p0, :cond_13

    .line 187
    iput-object v1, v0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 189
    iput-object v1, v0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 191
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultElement;->appendAttributes(Lorg/dom4j/Element;)V

    .line 193
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultElement;->appendContent(Lorg/dom4j/Branch;)V

    .line 196
    :cond_13
    return-object v0
.end method

.method protected contentList()Ljava/util/List;
    .registers 4

    .prologue
    .line 948
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 950
    .local v0, contentShadow:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_9

    .line 951
    check-cast v0, Ljava/util/List;

    .line 961
    .end local v0           #contentShadow:Ljava/lang/Object;
    :goto_8
    return-object v0

    .line 953
    .restart local v0       #contentShadow:Ljava/lang/Object;
    :cond_9
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createContentList()Ljava/util/List;

    move-result-object v1

    .line 955
    .local v1, list:Ljava/util/List;
    if-eqz v0, :cond_12

    .line 956
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_12
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    move-object v0, v1

    .line 961
    goto :goto_8
.end method

.method public declaredNamespaces()Ljava/util/List;
    .registers 8

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 303
    .local v0, answer:Lorg/dom4j/tree/BackedList;
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 305
    .local v1, contentShadow:Ljava/lang/Object;
    instance-of v6, v1, Ljava/util/List;

    if-eqz v6, :cond_23

    move-object v3, v1

    .line 306
    check-cast v3, Ljava/util/List;

    .line 308
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 310
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-lt v2, v5, :cond_15

    .line 323
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v5           #size:I
    :cond_14
    :goto_14
    return-object v0

    .line 311
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;
    .restart local v5       #size:I
    :cond_15
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 313
    .local v4, object:Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Namespace;

    if-eqz v6, :cond_20

    .line 314
    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 310
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 318
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v4           #object:Ljava/lang/Object;
    .end local v5           #size:I
    :cond_23
    instance-of v6, v1, Lorg/dom4j/Namespace;

    if-eqz v6, :cond_14

    .line 319
    invoke-virtual {v0, v1}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 9
    .parameter "name"

    .prologue
    .line 532
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 534
    .local v0, contentShadow:Ljava/lang/Object;
    instance-of v6, v0, Ljava/util/List;

    if-eqz v6, :cond_2a

    move-object v3, v0

    .line 535
    check-cast v3, Ljava/util/List;

    .line 537
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 539
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-lt v2, v5, :cond_12

    .line 560
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v5           #size:I
    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_11
    return-object v1

    .line 540
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;
    .restart local v5       #size:I
    :cond_12
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 542
    .local v4, object:Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Element;

    if-eqz v6, :cond_27

    move-object v1, v4

    .line 543
    check-cast v1, Lorg/dom4j/Element;

    .line 545
    .local v1, element:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 539
    .end local v1           #element:Lorg/dom4j/Element;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 551
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v4           #object:Ljava/lang/Object;
    .end local v5           #size:I
    :cond_2a
    instance-of v6, v0, Lorg/dom4j/Element;

    if-eqz v6, :cond_10

    move-object v1, v0

    .line 552
    check-cast v1, Lorg/dom4j/Element;

    .line 554
    .restart local v1       #element:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_11
.end method

.method public element(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Element;
    .registers 4
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 596
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 9
    .parameter "qName"

    .prologue
    .line 564
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 566
    .local v0, contentShadow:Ljava/lang/Object;
    instance-of v6, v0, Ljava/util/List;

    if-eqz v6, :cond_2a

    move-object v3, v0

    .line 567
    check-cast v3, Ljava/util/List;

    .line 569
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 571
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-lt v2, v5, :cond_12

    .line 592
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v5           #size:I
    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_11
    return-object v1

    .line 572
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;
    .restart local v5       #size:I
    :cond_12
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 574
    .local v4, object:Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/Element;

    if-eqz v6, :cond_27

    move-object v1, v4

    .line 575
    check-cast v1, Lorg/dom4j/Element;

    .line 577
    .local v1, element:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 571
    .end local v1           #element:Lorg/dom4j/Element;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 583
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v4           #object:Ljava/lang/Object;
    .end local v5           #size:I
    :cond_2a
    instance-of v6, v0, Lorg/dom4j/Element;

    if-eqz v6, :cond_10

    move-object v1, v0

    .line 584
    check-cast v1, Lorg/dom4j/Element;

    .line 586
    .restart local v1       #element:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_11
.end method

.method public getDocument()Lorg/dom4j/Document;
    .registers 3

    .prologue
    .line 97
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v1, v1, Lorg/dom4j/Document;

    if-eqz v1, :cond_b

    .line 98
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v1, Lorg/dom4j/Document;

    .line 105
    :goto_a
    return-object v1

    .line 99
    :cond_b
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v1, v1, Lorg/dom4j/Element;

    if-eqz v1, :cond_1a

    .line 100
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    .line 102
    .local v0, parent:Lorg/dom4j/Element;
    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v1

    goto :goto_a

    .line 105
    .end local v0           #parent:Lorg/dom4j/Element;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .registers 3

    .prologue
    .line 1014
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    invoke-virtual {v1}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 1016
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    if-eqz v0, :cond_9

    .end local v0           #factory:Lorg/dom4j/DocumentFactory;
    :goto_8
    return-object v0

    .restart local v0       #factory:Lorg/dom4j/DocumentFactory;
    :cond_9
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    goto :goto_8
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 11
    .parameter "prefix"

    .prologue
    .line 200
    if-nez p1, :cond_4

    .line 201
    const-string p1, ""

    .line 204
    :cond_4
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 205
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v4

    .line 250
    :cond_12
    :goto_12
    return-object v4

    .line 206
    :cond_13
    const-string v8, "xml"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 207
    sget-object v4, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_12

    .line 209
    :cond_1e
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 211
    .local v1, contentShadow:Ljava/lang/Object;
    instance-of v8, v1, Ljava/util/List;

    if-eqz v8, :cond_54

    move-object v3, v1

    .line 212
    check-cast v3, Ljava/util/List;

    .line 214
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 216
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2c
    if-lt v2, v7, :cond_3c

    .line 236
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v7           #size:I
    :cond_2e
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getParent()Lorg/dom4j/Element;

    move-result-object v6

    .line 238
    .local v6, parent:Lorg/dom4j/Element;
    if-eqz v6, :cond_66

    .line 239
    invoke-interface {v6, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 241
    .local v0, answer:Lorg/dom4j/Namespace;
    if-eqz v0, :cond_66

    move-object v4, v0

    .line 242
    goto :goto_12

    .line 217
    .end local v0           #answer:Lorg/dom4j/Namespace;
    .end local v6           #parent:Lorg/dom4j/Element;
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;
    .restart local v7       #size:I
    :cond_3c
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 219
    .local v5, object:Ljava/lang/Object;
    instance-of v8, v5, Lorg/dom4j/Namespace;

    if-eqz v8, :cond_51

    move-object v4, v5

    .line 220
    check-cast v4, Lorg/dom4j/Namespace;

    .line 222
    .local v4, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {v4}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 216
    .end local v4           #namespace:Lorg/dom4j/Namespace;
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 227
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v5           #object:Ljava/lang/Object;
    .end local v7           #size:I
    :cond_54
    instance-of v8, v1, Lorg/dom4j/Namespace;

    if-eqz v8, :cond_2e

    move-object v4, v1

    .line 228
    check-cast v4, Lorg/dom4j/Namespace;

    .line 230
    .restart local v4       #namespace:Lorg/dom4j/Namespace;
    invoke-virtual {v4}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    goto :goto_12

    .line 246
    .end local v4           #namespace:Lorg/dom4j/Namespace;
    .restart local v6       #parent:Lorg/dom4j/Element;
    :cond_66
    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_71

    .line 247
    :cond_6e
    sget-object v4, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_12

    .line 250
    :cond_71
    const/4 v4, 0x0

    goto :goto_12
.end method

.method public getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 10
    .parameter "uri"

    .prologue
    .line 254
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_b

    .line 255
    :cond_8
    sget-object v3, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    .line 291
    :cond_a
    :goto_a
    return-object v3

    .line 256
    :cond_b
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 257
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    goto :goto_a

    .line 259
    :cond_1a
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 261
    .local v0, contentShadow:Ljava/lang/Object;
    instance-of v7, v0, Ljava/util/List;

    if-eqz v7, :cond_4d

    move-object v2, v0

    .line 262
    check-cast v2, Ljava/util/List;

    .line 264
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 266
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    if-lt v1, v6, :cond_35

    .line 285
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;
    .end local v6           #size:I
    :cond_2a
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getParent()Lorg/dom4j/Element;

    move-result-object v5

    .line 287
    .local v5, parent:Lorg/dom4j/Element;
    if-eqz v5, :cond_5f

    .line 288
    invoke-interface {v5, p1}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v3

    goto :goto_a

    .line 267
    .end local v5           #parent:Lorg/dom4j/Element;
    .restart local v1       #i:I
    .restart local v2       #list:Ljava/util/List;
    .restart local v6       #size:I
    :cond_35
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 269
    .local v4, object:Ljava/lang/Object;
    instance-of v7, v4, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_4a

    move-object v3, v4

    .line 270
    check-cast v3, Lorg/dom4j/Namespace;

    .line 272
    .local v3, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 266
    .end local v3           #namespace:Lorg/dom4j/Namespace;
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 277
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;
    .end local v4           #object:Ljava/lang/Object;
    .end local v6           #size:I
    :cond_4d
    instance-of v7, v0, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_2a

    move-object v3, v0

    .line 278
    check-cast v3, Lorg/dom4j/Namespace;

    .line 280
    .restart local v3       #namespace:Lorg/dom4j/Namespace;
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_a

    .line 291
    .end local v3           #namespace:Lorg/dom4j/Namespace;
    .restart local v5       #parent:Lorg/dom4j/Element;
    :cond_5f
    const/4 v3, 0x0

    goto :goto_a
.end method

.method public getParent()Lorg/dom4j/Element;
    .registers 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, result:Lorg/dom4j/Element;
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v1, v1, Lorg/dom4j/Element;

    if-eqz v1, :cond_b

    .line 84
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    .end local v0           #result:Lorg/dom4j/Element;
    check-cast v0, Lorg/dom4j/Element;

    .line 87
    .restart local v0       #result:Lorg/dom4j/Element;
    :cond_b
    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 9

    .prologue
    .line 141
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 143
    .local v1, contentShadow:Ljava/lang/Object;
    instance-of v7, v1, Ljava/util/List;

    if-eqz v7, :cond_3d

    move-object v3, v1

    .line 144
    check-cast v3, Ljava/util/List;

    .line 146
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 148
    .local v5, size:I
    if-lez v5, :cond_44

    .line 149
    const/4 v7, 0x1

    if-ne v5, v7, :cond_1c

    .line 151
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .end local v3           #list:Ljava/util/List;
    .end local v5           #size:I
    :goto_1b
    return-object v7

    .line 153
    .restart local v3       #list:Ljava/util/List;
    .restart local v5       #size:I
    :cond_1c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    if-lt v2, v5, :cond_29

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1b

    .line 156
    :cond_29
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 158
    .local v4, node:Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, string:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3a

    .line 167
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 175
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v4           #node:Ljava/lang/Object;
    .end local v5           #size:I
    .end local v6           #string:Ljava/lang/String;
    :cond_3d
    if-eqz v1, :cond_44

    .line 176
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1b

    .line 180
    :cond_44
    const-string v7, ""

    goto :goto_1b
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 129
    .local v0, contentShadow:Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_b

    .line 130
    invoke-super {p0}, Lorg/dom4j/tree/AbstractElement;->getText()Ljava/lang/String;

    move-result-object v1

    .line 135
    :goto_a
    return-object v1

    .line 132
    :cond_b
    if-eqz v0, :cond_12

    .line 133
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->getContentAsText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 135
    :cond_12
    const-string v1, ""

    goto :goto_a
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .registers 5
    .parameter "node"

    .prologue
    .line 676
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 678
    .local v0, contentShadow:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_e

    move-object v1, v0

    .line 679
    check-cast v1, Ljava/util/List;

    .line 681
    .local v1, list:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 686
    .end local v1           #list:Ljava/util/List;
    :goto_d
    return v2

    .line 683
    :cond_e
    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 684
    const/4 v2, 0x0

    goto :goto_d

    .line 686
    :cond_18
    const/4 v2, -0x1

    goto :goto_d
.end method

.method public node(I)Lorg/dom4j/Node;
    .registers 7
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 647
    if-ltz p1, :cond_12

    .line 648
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 651
    .local v0, contentShadow:Ljava/lang/Object;
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_21

    move-object v1, v0

    .line 652
    check-cast v1, Ljava/util/List;

    .line 654
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_13

    .line 672
    .end local v0           #contentShadow:Ljava/lang/Object;
    .end local v1           #list:Ljava/util/List;
    :cond_12
    :goto_12
    return-object v3

    .line 658
    .restart local v0       #contentShadow:Ljava/lang/Object;
    .restart local v1       #list:Ljava/util/List;
    :cond_13
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 663
    .end local v1           #list:Ljava/util/List;
    .local v2, node:Ljava/lang/Object;
    :goto_17
    if-eqz v2, :cond_12

    .line 664
    instance-of v3, v2, Lorg/dom4j/Node;

    if-eqz v3, :cond_27

    .line 665
    check-cast v2, Lorg/dom4j/Node;

    .end local v2           #node:Ljava/lang/Object;
    move-object v3, v2

    goto :goto_12

    .line 660
    :cond_21
    if-nez p1, :cond_25

    move-object v2, v0

    .restart local v2       #node:Ljava/lang/Object;
    :goto_24
    goto :goto_17

    .end local v2           #node:Ljava/lang/Object;
    :cond_25
    move-object v2, v3

    goto :goto_24

    .line 667
    .restart local v2       #node:Ljava/lang/Object;
    :cond_27
    new-instance v3, Lorg/dom4j/tree/DefaultText;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/dom4j/tree/DefaultText;-><init>(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public nodeCount()I
    .registers 4

    .prologue
    .line 692
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 694
    .local v0, contentShadow:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_e

    move-object v1, v0

    .line 695
    check-cast v1, Ljava/util/List;

    .line 697
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 699
    .end local v1           #list:Ljava/util/List;
    :goto_d
    return v2

    :cond_e
    if-eqz v0, :cond_12

    const/4 v2, 0x1

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 704
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 706
    .local v0, contentShadow:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_e

    move-object v1, v0

    .line 707
    check-cast v1, Ljava/util/List;

    .line 709
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 714
    .end local v1           #list:Ljava/util/List;
    :goto_d
    return-object v2

    .line 711
    :cond_e
    if-eqz v0, :cond_15

    .line 712
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    goto :goto_d

    .line 714
    :cond_15
    sget-object v2, Lorg/dom4j/tree/DefaultElement;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_d
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .registers 9
    .parameter "target"

    .prologue
    .line 466
    iget-object v4, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 468
    .local v4, shadow:Ljava/lang/Object;
    instance-of v6, v4, Ljava/util/List;

    if-eqz v6, :cond_2a

    move-object v1, v4

    .line 469
    check-cast v1, Ljava/util/List;

    .line 471
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 473
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-lt v0, v5, :cond_12

    .line 494
    .end local v0           #i:I
    .end local v1           #list:Ljava/util/List;
    .end local v5           #size:I
    :cond_10
    const/4 v3, 0x0

    :cond_11
    :goto_11
    return-object v3

    .line 474
    .restart local v0       #i:I
    .restart local v1       #list:Ljava/util/List;
    .restart local v5       #size:I
    :cond_12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 476
    .local v2, object:Ljava/lang/Object;
    instance-of v6, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_27

    move-object v3, v2

    .line 477
    check-cast v3, Lorg/dom4j/ProcessingInstruction;

    .line 479
    .local v3, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v3}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 473
    .end local v3           #pi:Lorg/dom4j/ProcessingInstruction;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 485
    .end local v0           #i:I
    .end local v1           #list:Ljava/util/List;
    .end local v2           #object:Ljava/lang/Object;
    .end local v5           #size:I
    :cond_2a
    instance-of v6, v4, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_10

    move-object v3, v4

    .line 486
    check-cast v3, Lorg/dom4j/ProcessingInstruction;

    .line 488
    .restart local v3       #pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v3}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_11
.end method

.method public processingInstructions()Ljava/util/List;
    .registers 8

    .prologue
    .line 402
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 404
    .local v1, contentShadow:Ljava/lang/Object;
    instance-of v6, v1, Ljava/util/List;

    if-eqz v6, :cond_23

    move-object v3, v1

    .line 405
    check-cast v3, Ljava/util/List;

    .line 407
    .local v3, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 409
    .local v0, answer:Lorg/dom4j/tree/BackedList;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 411
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-lt v2, v5, :cond_15

    .line 425
    .end local v0           #answer:Lorg/dom4j/tree/BackedList;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v5           #size:I
    :goto_14
    return-object v0

    .line 412
    .restart local v0       #answer:Lorg/dom4j/tree/BackedList;
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/List;
    .restart local v5       #size:I
    :cond_15
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 414
    .local v4, object:Ljava/lang/Object;
    instance-of v6, v4, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_20

    .line 415
    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 411
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 421
    .end local v0           #answer:Lorg/dom4j/tree/BackedList;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/List;
    .end local v4           #object:Ljava/lang/Object;
    .end local v5           #size:I
    :cond_23
    instance-of v6, v1, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_2c

    .line 422
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    .line 425
    :cond_2c
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_14
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .parameter "target"

    .prologue
    .line 430
    iget-object v5, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 432
    .local v5, shadow:Ljava/lang/Object;
    instance-of v7, v5, Ljava/util/List;

    if-eqz v7, :cond_30

    move-object v2, v5

    .line 433
    check-cast v2, Ljava/util/List;

    .line 435
    .local v2, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 437
    .local v0, answer:Lorg/dom4j/tree/BackedList;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 439
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-lt v1, v6, :cond_15

    .line 461
    .end local v0           #answer:Lorg/dom4j/tree/BackedList;
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;
    .end local v6           #size:I
    :goto_14
    return-object v0

    .line 440
    .restart local v0       #answer:Lorg/dom4j/tree/BackedList;
    .restart local v1       #i:I
    .restart local v2       #list:Ljava/util/List;
    .restart local v6       #size:I
    :cond_15
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 442
    .local v3, object:Ljava/lang/Object;
    instance-of v7, v3, Lorg/dom4j/ProcessingInstruction;

    if-eqz v7, :cond_2d

    move-object v4, v3

    .line 443
    check-cast v4, Lorg/dom4j/ProcessingInstruction;

    .line 445
    .local v4, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v4}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 446
    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 439
    .end local v4           #pi:Lorg/dom4j/ProcessingInstruction;
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 453
    .end local v0           #answer:Lorg/dom4j/tree/BackedList;
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;
    .end local v3           #object:Ljava/lang/Object;
    .end local v6           #size:I
    :cond_30
    instance-of v7, v5, Lorg/dom4j/ProcessingInstruction;

    if-eqz v7, :cond_46

    move-object v4, v5

    .line 454
    check-cast v4, Lorg/dom4j/ProcessingInstruction;

    .line 456
    .restart local v4       #pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v4}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 457
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    .line 461
    .end local v4           #pi:Lorg/dom4j/ProcessingInstruction;
    :cond_46
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_14
.end method

.method public remove(Lorg/dom4j/Attribute;)Z
    .registers 10
    .parameter "attribute"

    .prologue
    const/4 v7, 0x0

    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, answer:Z
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 859
    .local v1, attributesShadow:Ljava/lang/Object;
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_25

    move-object v3, v1

    .line 860
    check-cast v3, Ljava/util/List;

    .line 862
    .local v3, list:Ljava/util/List;
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 864
    if-nez v0, :cond_1f

    .line 866
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 868
    .local v2, copy:Lorg/dom4j/Attribute;
    if-eqz v2, :cond_1f

    .line 869
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 871
    const/4 v0, 0x1

    .line 891
    .end local v2           #copy:Lorg/dom4j/Attribute;
    .end local v3           #list:Ljava/util/List;
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_24

    .line 892
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 895
    :cond_24
    return v0

    .line 874
    :cond_25
    if-eqz v1, :cond_1f

    .line 875
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 876
    iput-object v7, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 878
    const/4 v0, 0x1

    goto :goto_1f

    :cond_31
    move-object v4, v1

    .line 881
    check-cast v4, Lorg/dom4j/Attribute;

    .line 883
    .local v4, other:Lorg/dom4j/Attribute;
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-interface {v4}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 884
    iput-object v7, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 886
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .registers 6
    .parameter "node"

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, answer:Z
    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 928
    .local v1, contentShadow:Ljava/lang/Object;
    if-eqz v1, :cond_b

    .line 929
    if-ne v1, p1, :cond_11

    .line 930
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 932
    const/4 v0, 0x1

    .line 940
    :cond_b
    :goto_b
    if-eqz v0, :cond_10

    .line 941
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 944
    :cond_10
    return v0

    .line 933
    :cond_11
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_b

    move-object v2, v1

    .line 934
    check-cast v2, Ljava/util/List;

    .line 936
    .local v2, list:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .registers 9
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 498
    iget-object v4, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 500
    .local v4, shadow:Ljava/lang/Object;
    instance-of v6, v4, Ljava/util/List;

    if-eqz v6, :cond_2f

    move-object v1, v4

    .line 501
    check-cast v1, Ljava/util/List;

    .line 503
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_16

    .line 528
    .end local v0           #iter:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/List;
    :cond_14
    const/4 v5, 0x0

    :goto_15
    return v5

    .line 504
    .restart local v0       #iter:Ljava/util/Iterator;
    .restart local v1       #list:Ljava/util/List;
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 506
    .local v2, object:Ljava/lang/Object;
    instance-of v6, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_e

    move-object v3, v2

    .line 507
    check-cast v3, Lorg/dom4j/ProcessingInstruction;

    .line 509
    .local v3, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v3}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 510
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 517
    .end local v0           #iter:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/List;
    .end local v2           #object:Ljava/lang/Object;
    .end local v3           #pi:Lorg/dom4j/ProcessingInstruction;
    :cond_2f
    instance-of v6, v4, Lorg/dom4j/ProcessingInstruction;

    if-eqz v6, :cond_14

    move-object v3, v4

    .line 518
    check-cast v3, Lorg/dom4j/ProcessingInstruction;

    .line 520
    .restart local v3       #pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v3}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 521
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    goto :goto_15
.end method

.method protected setAttributeList(Ljava/util/List;)V
    .registers 2
    .parameter "attributeList"

    .prologue
    .line 1010
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 1011
    return-void
.end method

.method public setAttributes(Ljava/util/List;)V
    .registers 3
    .parameter "attributes"

    .prologue
    .line 724
    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_a

    .line 725
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    .end local p1
    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    .line 728
    .restart local p1
    :cond_a
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    .line 729
    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .registers 10
    .parameter "content"

    .prologue
    .line 600
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentRemoved()V

    .line 602
    instance-of v7, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v7, :cond_d

    .line 603
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    .end local p1
    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    .line 606
    .restart local p1
    :cond_d
    if-nez p1, :cond_13

    .line 607
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    .line 636
    :goto_12
    return-void

    .line 609
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 611
    .local v5, size:I
    invoke-virtual {p0, v5}, Lorg/dom4j/tree/DefaultElement;->createContentList(I)Ljava/util/List;

    move-result-object v1

    .line 613
    .local v1, newContent:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    if-lt v0, v5, :cond_21

    .line 634
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    goto :goto_12

    .line 614
    :cond_21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 616
    .local v3, object:Ljava/lang/Object;
    instance-of v7, v3, Lorg/dom4j/Node;

    if-eqz v7, :cond_43

    move-object v2, v3

    .line 617
    check-cast v2, Lorg/dom4j/Node;

    .line 618
    .local v2, node:Lorg/dom4j/Node;
    invoke-interface {v2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    .line 620
    .local v4, parent:Lorg/dom4j/Element;
    if-eqz v4, :cond_3a

    if-eq v4, p0, :cond_3a

    .line 621
    invoke-interface {v2}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #node:Lorg/dom4j/Node;
    check-cast v2, Lorg/dom4j/Node;

    .line 624
    .restart local v2       #node:Lorg/dom4j/Node;
    :cond_3a
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    .line 613
    .end local v2           #node:Lorg/dom4j/Node;
    .end local v4           #parent:Lorg/dom4j/Element;
    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 626
    :cond_43
    if-eqz v3, :cond_40

    .line 627
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 628
    .local v6, text:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v2

    .line 629
    .restart local v2       #node:Lorg/dom4j/Node;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_40
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .registers 3
    .parameter "document"

    .prologue
    .line 109
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    .line 110
    :cond_8
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    .line 112
    :cond_a
    return-void
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    .line 92
    :cond_8
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    .line 94
    :cond_a
    return-void
.end method

.method public setQName(Lorg/dom4j/QName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 123
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    .line 124
    return-void
.end method

.method public supportsParent()Z
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

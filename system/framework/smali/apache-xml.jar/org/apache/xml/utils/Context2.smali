.class final Lorg/apache/xml/utils/Context2;
.super Ljava/lang/Object;
.source "NamespaceSupport2.java"


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;


# instance fields
.field attributeNameTable:Ljava/util/Hashtable;

.field private child:Lorg/apache/xml/utils/Context2;

.field private declarations:Ljava/util/Vector;

.field defaultNS:Ljava/lang/String;

.field elementNameTable:Ljava/util/Hashtable;

.field private parent:Lorg/apache/xml/utils/Context2;

.field prefixTable:Ljava/util/Hashtable;

.field private tablesDirty:Z

.field uriTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 450
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method constructor <init>(Lorg/apache/xml/utils/Context2;)V
    .registers 4
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 476
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    .line 467
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    .line 469
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    .line 470
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    .line 477
    if-nez p1, :cond_24

    .line 479
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    .line 480
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    .line 481
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    .line 482
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    .line 486
    :goto_23
    return-void

    .line 485
    :cond_24
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/Context2;->setParent(Lorg/apache/xml/utils/Context2;)V

    goto :goto_23
.end method

.method private copyTables()V
    .registers 2

    .prologue
    .line 731
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    .line 732
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    .line 739
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_1f

    .line 740
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    .line 741
    :cond_1f
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_2a

    .line 742
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    .line 743
    :cond_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    .line 744
    return-void
.end method


# virtual methods
.method declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 538
    iget-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    if-nez v0, :cond_7

    .line 539
    invoke-direct {p0}, Lorg/apache/xml/utils/Context2;->copyTables()V

    .line 541
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    if-nez v0, :cond_12

    .line 542
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    .line 545
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 547
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 548
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    .line 557
    :goto_2d
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 558
    return-void

    .line 551
    :cond_33
    iput-object p2, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    goto :goto_2d

    .line 554
    :cond_36
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d
.end method

.method getChild()Lorg/apache/xml/utils/Context2;
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    return-object v0
.end method

.method getDeclaredPrefixes()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    if-nez v0, :cond_7

    .line 687
    sget-object v0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 689
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_6
.end method

.method getParent()Lorg/apache/xml/utils/Context2;
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    return-object v0
.end method

.method getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 670
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    .line 671
    const/4 v0, 0x0

    .line 673
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5
.end method

.method getPrefixes()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    .line 706
    sget-object v0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 708
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_6
.end method

.method getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prefix"

    .prologue
    .line 648
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 649
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    .line 653
    :goto_a
    return-object v0

    .line 650
    :cond_b
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    if-nez v0, :cond_11

    .line 651
    const/4 v0, 0x0

    goto :goto_a

    .line 653
    :cond_11
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a
.end method

.method processName(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 13
    .parameter "qName"
    .parameter "isAttribute"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 578
    if-eqz p2, :cond_1f

    .line 579
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    if-nez v6, :cond_10

    .line 580
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    .line 581
    :cond_10
    iget-object v4, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    .line 591
    .local v4, table:Ljava/util/Hashtable;
    :goto_12
    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    .line 592
    .local v2, name:[Ljava/lang/String;
    if-eqz v2, :cond_2d

    move-object v6, v2

    .line 634
    :goto_1e
    return-object v6

    .line 583
    .end local v2           #name:[Ljava/lang/String;
    .end local v4           #table:Ljava/util/Hashtable;
    :cond_1f
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    if-nez v6, :cond_2a

    .line 584
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    .line 585
    :cond_2a
    iget-object v4, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    .restart local v4       #table:Ljava/util/Hashtable;
    goto :goto_12

    .line 598
    .restart local v2       #name:[Ljava/lang/String;
    :cond_2d
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/String;

    .line 599
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 603
    .local v0, index:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_5b

    .line 604
    if-nez p2, :cond_3f

    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    if-nez v6, :cond_56

    .line 605
    :cond_3f
    const-string v6, ""

    aput-object v6, v2, v7

    .line 609
    :goto_43
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    .line 610
    aget-object v6, v2, v8

    aput-object v6, v2, v9

    .line 632
    :goto_4d
    aget-object v6, v2, v9

    invoke-virtual {v4, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iput-boolean v8, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    move-object v6, v2

    .line 634
    goto :goto_1e

    .line 607
    :cond_56
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    aput-object v6, v2, v7

    goto :goto_43

    .line 615
    :cond_5b
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, prefix:Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, local:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 619
    iget-object v5, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    .line 623
    .local v5, uri:Ljava/lang/String;
    :goto_6f
    if-nez v5, :cond_7c

    .line 624
    const/4 v6, 0x0

    goto :goto_1e

    .line 621
    .end local v5           #uri:Ljava/lang/String;
    :cond_73
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5       #uri:Ljava/lang/String;
    goto :goto_6f

    .line 626
    :cond_7c
    aput-object v5, v2, v7

    .line 627
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    .line 628
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    goto :goto_4d
.end method

.method setParent(Lorg/apache/xml/utils/Context2;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 516
    iput-object p1, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    .line 517
    iput-object p0, p1, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    .line 519
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    .line 520
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    .line 521
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    .line 522
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    .line 523
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    .line 525
    return-void
.end method

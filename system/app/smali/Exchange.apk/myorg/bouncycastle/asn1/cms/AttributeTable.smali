.class public Lmyorg/bouncycastle/asn1/cms/AttributeTable;
.super Ljava/lang/Object;
.source "AttributeTable.java"


# instance fields
.field private attributes:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 3
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 17
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 18
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 21
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/DEREncodableVector;->size()I

    move-result v2

    if-eq v1, v2, :cond_23

    .line 22
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/DEREncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    .line 24
    .local v0, a:Lmyorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/cms/Attribute;)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 26
    .end local v0           #a:Lmyorg/bouncycastle/asn1/cms/Attribute;
    :cond_23
    return-void
.end method

.method private addAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/cms/Attribute;)V
    .registers 6
    .parameter "oid"
    .parameter "a"

    .prologue
    .line 37
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, value:Ljava/lang/Object;
    if-nez v1, :cond_e

    .line 40
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_d
    return-void

    .line 44
    :cond_e
    instance-of v2, v1, Lmyorg/bouncycastle/asn1/cms/Attribute;

    if-eqz v2, :cond_23

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 47
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 55
    :goto_1d
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .end local v0           #v:Ljava/util/Vector;
    :cond_23
    move-object v0, v1

    .line 50
    check-cast v0, Ljava/util/Vector;

    .line 52
    .restart local v0       #v:Ljava/util/Vector;
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method private copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 6
    .parameter "in"

    .prologue
    .line 126
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 127
    .local v2, out:Ljava/util/Hashtable;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 129
    .local v0, e:Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 130
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 135
    .end local v1           #key:Ljava/lang/Object;
    :cond_1b
    return-object v2
.end method


# virtual methods
.method public toASN1EncodableVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .registers 6

    .prologue
    .line 105
    new-instance v2, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    .local v2, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 108
    .local v0, e:Ljava/util/Enumeration;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 109
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 111
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Vector;

    if-eqz v4, :cond_31

    .line 112
    check-cast v3, Ljava/util/Vector;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 114
    .local v1, en:Ljava/util/Enumeration;
    :goto_1f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 115
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1f

    .line 118
    .end local v1           #en:Ljava/util/Enumeration;
    .restart local v3       #value:Ljava/lang/Object;
    :cond_31
    invoke-static {v3}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_b

    .line 122
    .end local v3           #value:Ljava/lang/Object;
    :cond_39
    return-object v2
.end method

.method public toHashtable()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

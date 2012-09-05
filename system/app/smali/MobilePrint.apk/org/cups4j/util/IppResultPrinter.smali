.class public Lorg/cups4j/util/IppResultPrinter;
.super Ljava/lang/Object;
.source "IppResultPrinter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(Lch/ethz/vppserver/ippclient/IppResult;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 31
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lch/ethz/vppserver/ippclient/IppResult;->getHttpStatusResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lch/ethz/vppserver/ippclient/IppResult;->getIppStatusResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lch/ethz/vppserver/ippclient/IppResult;->getAttributeGroupList()Ljava/util/List;

    move-result-object v0

    .line 34
    .local v0, attributeGroupList:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/AttributeGroup;>;"
    invoke-static {v0}, Lorg/cups4j/util/IppResultPrinter;->printAttributeGroupList(Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public static print(Lch/ethz/vppserver/ippclient/IppResult;Z)V
    .registers 4
    .parameter "result"
    .parameter "nurHeader"

    .prologue
    .line 38
    if-eqz p1, :cond_15

    .line 39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lch/ethz/vppserver/ippclient/IppResult;->getHttpStatusResponse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lch/ethz/vppserver/ippclient/IppResult;->getIppStatusResponse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    :goto_14
    return-void

    .line 42
    :cond_15
    invoke-static {p0}, Lorg/cups4j/util/IppResultPrinter;->print(Lch/ethz/vppserver/ippclient/IppResult;)V

    goto :goto_14
.end method

.method private static printAttribute(Lch/ethz/vppserver/schema/ippclient/Attribute;)V
    .registers 5
    .parameter "attr"

    .prologue
    .line 94
    if-nez p0, :cond_3

    .line 100
    :goto_2
    return-void

    .line 97
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\tAttribute Name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, attributeValueList:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/AttributeValue;>;"
    invoke-static {v0}, Lorg/cups4j/util/IppResultPrinter;->printAttributeValueList(Ljava/util/List;)V

    goto :goto_2
.end method

.method private static printAttributeGroup(Lch/ethz/vppserver/schema/ippclient/AttributeGroup;)V
    .registers 5
    .parameter "attributeGroup"

    .prologue
    .line 66
    if-nez p0, :cond_3

    .line 72
    :goto_2
    return-void

    .line 69
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\r\nAttribute Group: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, attributeList:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/Attribute;>;"
    invoke-static {v0}, Lorg/cups4j/util/IppResultPrinter;->printAttributeList(Ljava/util/List;)V

    goto :goto_2
.end method

.method private static printAttributeGroupList(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/AttributeGroup;>;"
    if-nez p0, :cond_3

    .line 59
    :cond_2
    return-void

    .line 54
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 55
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_2

    .line 56
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 57
    .local v0, attributeGroup:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    invoke-static {v0}, Lorg/cups4j/util/IppResultPrinter;->printAttributeGroup(Lch/ethz/vppserver/schema/ippclient/AttributeGroup;)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private static printAttributeList(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/Attribute;>;"
    if-nez p0, :cond_3

    .line 87
    :cond_2
    return-void

    .line 82
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 83
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_2

    .line 84
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 85
    .local v0, attr:Lch/ethz/vppserver/schema/ippclient/Attribute;
    invoke-static {v0}, Lorg/cups4j/util/IppResultPrinter;->printAttribute(Lch/ethz/vppserver/schema/ippclient/Attribute;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private static printAttributeValueList(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/AttributeValue;>;"
    if-nez p0, :cond_3

    .line 116
    :cond_2
    return-void

    .line 110
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 111
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_2

    .line 112
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    .line 113
    .local v0, attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t\tAttribute Value: ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

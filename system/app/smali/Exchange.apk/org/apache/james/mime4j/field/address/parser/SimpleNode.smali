.class public Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
.super Lorg/apache/james/mime4j/field/address/parser/BaseNode;
.source "SimpleNode.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/Node;


# instance fields
.field protected children:[Lorg/apache/james/mime4j/field/address/parser/Node;

.field protected id:I

.field protected parent:Lorg/apache/james/mime4j/field/address/parser/Node;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "i"

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/BaseNode;-><init>()V

    .line 12
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->id:I

    .line 13
    return-void
.end method


# virtual methods
.method public jjtAddChild(Lorg/apache/james/mime4j/field/address/parser/Node;I)V
    .registers 7
    .parameter "n"
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    if-nez v1, :cond_10

    .line 31
    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/Node;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    .line 37
    :cond_b
    :goto_b
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    aput-object p1, v1, p2

    .line 38
    return-void

    .line 32
    :cond_10
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    array-length v1, v1

    if-lt p2, v1, :cond_b

    .line 33
    add-int/lit8 v1, p2, 0x1

    new-array v0, v1, [Lorg/apache/james/mime4j/field/address/parser/Node;

    .line 34
    .local v0, c:[Lorg/apache/james/mime4j/field/address/parser/Node;
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_b
.end method

.method public jjtClose()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public jjtGetChild(I)Lorg/apache/james/mime4j/field/address/parser/Node;
    .registers 3
    .parameter "i"

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public jjtGetNumChildren()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    array-length v0, v0

    goto :goto_5
.end method

.method public jjtOpen()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method public jjtSetParent(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 2
    .parameter "n"

    .prologue
    .line 26
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->parent:Lorg/apache/james/mime4j/field/address/parser/Node;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->id:I

    aget-object v0, v0, v1

    return-object v0
.end method

.class Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
.super Ljava/lang/Object;
.source "JJTAddressListParserState.java"


# instance fields
.field private marks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mk:I

.field private node_created:Z

.field private nodes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/apache/james/mime4j/field/address/parser/Node;",
            ">;"
        }
    .end annotation
.end field

.field private sp:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    .line 15
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    .line 16
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    .line 17
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 18
    return-void
.end method


# virtual methods
.method clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 4
    .parameter "n"

    .prologue
    .line 76
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    if-le v0, v1, :cond_a

    .line 77
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_0

    .line 79
    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 80
    return-void
.end method

.method closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
    .registers 7
    .parameter "n"
    .parameter "condition"

    .prologue
    .line 113
    if-eqz p2, :cond_2f

    .line 114
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodeArity()I

    move-result v0

    .line 115
    .local v0, a:I
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    move v1, v0

    .line 116
    .end local v0           #a:I
    .local v1, a:I
    :goto_15
    add-int/lit8 v0, v1, -0x1

    .end local v1           #a:I
    .restart local v0       #a:I
    if-lez v1, :cond_25

    .line 117
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    .line 118
    .local v2, c:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-interface {v2, p1}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtSetParent(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 119
    invoke-interface {p1, v2, v0}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtAddChild(Lorg/apache/james/mime4j/field/address/parser/Node;I)V

    move v1, v0

    .line 120
    .end local v0           #a:I
    .restart local v1       #a:I
    goto :goto_15

    .line 121
    .end local v1           #a:I
    .end local v2           #c:Lorg/apache/james/mime4j/field/address/parser/Node;
    .restart local v0       #a:I
    :cond_25
    invoke-interface {p1}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtClose()V

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->pushNode(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    .line 128
    .end local v0           #a:I
    :goto_2e
    return-void

    .line 125
    :cond_2f
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 126
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->node_created:Z

    goto :goto_2e
.end method

.method nodeArity()I
    .registers 3

    .prologue
    .line 72
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    sub-int/2addr v0, v1

    return v0
.end method

.method openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 5
    .parameter "n"

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 85
    invoke-interface {p1}, Lorg/apache/james/mime4j/field/address/parser/Node;->jjtOpen()V

    .line 86
    return-void
.end method

.method popNode()Lorg/apache/james/mime4j/field/address/parser/Node;
    .registers 3

    .prologue
    .line 57
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    if-ge v0, v1, :cond_18

    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->mk:I

    .line 60
    :cond_18
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method

.method pushNode(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 3
    .parameter "n"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->sp:I

    .line 51
    return-void
.end method

.method rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->nodes:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/Node;

    return-object v0
.end method
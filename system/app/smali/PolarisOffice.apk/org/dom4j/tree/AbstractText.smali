.class public abstract Lorg/dom4j/tree/AbstractText;
.super Lorg/dom4j/tree/AbstractCharacterData;
.source "AbstractText.java"

# interfaces
.implements Lorg/dom4j/Text;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractCharacterData;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .registers 2
    .parameter "visitor"

    .prologue
    .line 46
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Text;)V

    .line 47
    return-void
.end method

.method public asXML()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " [Text: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;)V
    .registers 3
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 43
    return-void
.end method
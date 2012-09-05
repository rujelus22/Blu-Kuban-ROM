.class public Lorg/dom4j/io/DocumentSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "DocumentSource.java"


# static fields
.field public static final DOM4J_FEATURE:Ljava/lang/String; = "http://org.dom4j.io.DoucmentSource/feature"


# instance fields
.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Lorg/dom4j/Document;)V
    .registers 3
    .parameter "document"

    .prologue
    .line 56
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 38
    new-instance v0, Lorg/dom4j/io/SAXWriter;

    invoke-direct {v0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 57
    invoke-virtual {p0, p1}, Lorg/dom4j/io/DocumentSource;->setDocument(Lorg/dom4j/Document;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Node;)V
    .registers 3
    .parameter "node"

    .prologue
    .line 46
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 38
    new-instance v0, Lorg/dom4j/io/SAXWriter;

    invoke-direct {v0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 47
    invoke-interface {p1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DocumentSource;->setDocument(Lorg/dom4j/Document;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getDocument()Lorg/dom4j/Document;
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/dom4j/io/DocumentSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    check-cast v0, Lorg/dom4j/io/DocumentInputSource;

    .line 70
    .local v0, source:Lorg/dom4j/io/DocumentInputSource;
    invoke-virtual {v0}, Lorg/dom4j/io/DocumentInputSource;->getDocument()Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .registers 3
    .parameter "document"

    .prologue
    .line 80
    new-instance v0, Lorg/dom4j/io/DocumentInputSource;

    invoke-direct {v0, p1}, Lorg/dom4j/io/DocumentInputSource;-><init>(Lorg/dom4j/Document;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 81
    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .registers 3
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 107
    instance-of v0, p1, Lorg/dom4j/io/DocumentInputSource;

    if-eqz v0, :cond_a

    .line 108
    check-cast p1, Lorg/dom4j/io/DocumentInputSource;

    .end local p1
    invoke-super {p0, p1}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 112
    return-void

    .line 110
    .restart local p1
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 125
    instance-of v2, p1, Lorg/dom4j/io/SAXWriter;

    if-eqz v2, :cond_9

    .line 126
    check-cast p1, Lorg/dom4j/io/SAXWriter;

    .end local p1
    iput-object p1, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 146
    :goto_8
    return-void

    .line 127
    .restart local p1
    :cond_9
    instance-of v2, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v2, :cond_24

    move-object v0, p1

    .line 128
    check-cast v0, Lorg/xml/sax/XMLFilter;

    .line 131
    .local v0, filter:Lorg/xml/sax/XMLFilter;
    :goto_10
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 133
    .local v1, parent:Lorg/xml/sax/XMLReader;
    instance-of v2, v1, Lorg/xml/sax/XMLFilter;

    if-eqz v2, :cond_1c

    move-object v0, v1

    .line 134
    check-cast v0, Lorg/xml/sax/XMLFilter;

    .line 130
    goto :goto_10

    .line 141
    :cond_1c
    iget-object v2, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 142
    iput-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    goto :goto_8

    .line 144
    .end local v0           #filter:Lorg/xml/sax/XMLFilter;
    .end local v1           #parent:Lorg/xml/sax/XMLReader;
    :cond_24
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

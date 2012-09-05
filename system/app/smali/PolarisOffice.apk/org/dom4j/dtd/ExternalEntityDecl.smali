.class public Lorg/dom4j/dtd/ExternalEntityDecl;
.super Ljava/lang/Object;
.source "ExternalEntityDecl.java"


# instance fields
.field private name:Ljava/lang/String;

.field private publicID:Ljava/lang/String;

.field private systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "publicID"
    .parameter "systemID"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->publicID:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 54
    iput-object p1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setPublicID(Ljava/lang/String;)V
    .registers 2
    .parameter "publicID"

    .prologue
    .line 73
    iput-object p1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->publicID:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSystemID(Ljava/lang/String;)V
    .registers 2
    .parameter "systemID"

    .prologue
    .line 92
    iput-object p1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<!ENTITY "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 99
    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :goto_20
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->publicID:Ljava/lang/String;

    if-eqz v1, :cond_56

    .line 106
    const-string v1, " PUBLIC \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->publicID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 111
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_46
    :goto_46
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    :cond_50
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 115
    :cond_56
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 116
    const-string v1, " SYSTEM \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_46
.end method

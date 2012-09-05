.class public Lorg/apache/log4j/or/sax/AttributesRenderer;
.super Ljava/lang/Object;
.source "AttributesRenderer.java"

# interfaces
.implements Lorg/apache/log4j/or/ObjectRenderer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public doRender(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .parameter "o"

    .prologue
    .line 40
    instance-of v5, p1, Lorg/xml/sax/Attributes;

    if-eqz v5, :cond_38

    .line 41
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .local v4, sbuf:Ljava/lang/StringBuffer;
    move-object v0, p1

    .line 42
    check-cast v0, Lorg/xml/sax/Attributes;

    .line 43
    .local v0, a:Lorg/xml/sax/Attributes;
    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 44
    .local v3, len:I
    const/4 v1, 0x1

    .line 45
    .local v1, first:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-lt v2, v3, :cond_19

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    .end local v0           #a:Lorg/xml/sax/Attributes;
    .end local v1           #first:Z
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #sbuf:Ljava/lang/StringBuffer;
    :goto_18
    return-object v5

    .line 46
    .restart local v0       #a:Lorg/xml/sax/Attributes;
    .restart local v1       #first:Z
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v4       #sbuf:Ljava/lang/StringBuffer;
    :cond_19
    if-eqz v1, :cond_32

    .line 47
    const/4 v1, 0x0

    .line 51
    :goto_1c
    invoke-interface {v0, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    invoke-interface {v0, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 49
    :cond_32
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c

    .line 57
    .end local v0           #a:Lorg/xml/sax/Attributes;
    .end local v1           #first:Z
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #sbuf:Ljava/lang/StringBuffer;
    :cond_38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_18
.end method

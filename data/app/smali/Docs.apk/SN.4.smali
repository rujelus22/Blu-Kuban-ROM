.class public LSN;
.super LSD;
.source "XmlAclGDataSerializer.java"


# direct methods
.method constructor <init>(Lasu;LSq;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, LSD;-><init>(Lasu;Lase;)V

    .line 37
    return-void
.end method

.method private a()LSq;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, LSN;->a()Lase;

    move-result-object v0

    check-cast v0, LSq;

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;Ldw;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 58
    sget-object v0, Ldw;->f:Ldw;

    if-eq p1, v0, :cond_9

    sget-object v0, Ldw;->e:Ldw;

    if-ne p1, v0, :cond_a

    .line 70
    :cond_9
    :goto_9
    return-void

    .line 61
    :cond_a
    const-string v0, "http://schemas.google.com/acl/2007"

    const-string v1, "role"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    const-string v0, "value"

    invoke-virtual {p1}, Ldw;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    const-string v0, "http://schemas.google.com/acl/2007"

    const-string v1, "role"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    if-eqz p2, :cond_9

    .line 66
    const-string v0, "http://schemas.google.com/acl/2007"

    const-string v1, "role"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const-string v0, "value"

    sget-object v1, Ldw;->d:Ldw;

    invoke-virtual {v1}, Ldw;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    const-string v0, "http://schemas.google.com/acl/2007"

    const-string v1, "role"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;Ldx;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 74
    sget-object v0, Ldx;->e:Ldx;

    if-ne p1, v0, :cond_6

    .line 83
    :goto_5
    return-void

    .line 77
    :cond_6
    const-string v0, "http://schemas.google.com/acl/2007"

    const-string v1, "scope"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    sget-object v0, Last;->l:Ljava/lang/String;

    invoke-virtual {p1}, Ldx;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    if-eqz p2, :cond_21

    .line 80
    const-string v0, "value"

    invoke-interface {p0, v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    :cond_21
    const-string v0, "http://schemas.google.com/acl/2007"

    const-string v1, "scope"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Set;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Set",
            "<",
            "Lds;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lds;->b:Lds;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, LafQ;->a(Z)V

    .line 88
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lds;

    .line 89
    const-string v2, "http://schemas.google.com/acl/2007"

    const-string v3, "additionalRole"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const/4 v2, 0x0

    const-string v3, "value"

    invoke-virtual {v0}, Lds;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    const-string v0, "http://schemas.google.com/acl/2007"

    const-string v2, "additionalRole"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_10

    .line 87
    :cond_39
    const/4 v0, 0x0

    goto :goto_9

    .line 93
    :cond_3b
    return-void
.end method


# virtual methods
.method protected a(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter

    .prologue
    .line 98
    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "gd"

    const-string v1, "http://schemas.google.com/g/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "gAcl"

    const-string v1, "http://schemas.google.com/acl/2007"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method protected b(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, LSN;->a()LSq;

    move-result-object v0

    .line 49
    const-string v1, "XmlAclGDataSerializer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serializing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v0}, LSq;->a()Ldw;

    move-result-object v1

    invoke-virtual {v0}, LSq;->a()Z

    move-result v2

    invoke-static {p1, v1, v2}, LSN;->a(Lorg/xmlpull/v1/XmlSerializer;Ldw;Z)V

    .line 52
    invoke-virtual {v0}, LSq;->a()Ldx;

    move-result-object v1

    invoke-virtual {v0}, LSq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, LSN;->a(Lorg/xmlpull/v1/XmlSerializer;Ldx;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, LSq;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, LSN;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Set;)V

    .line 54
    return-void
.end method

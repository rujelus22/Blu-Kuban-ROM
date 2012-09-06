.class public LSx;
.super Laso;
.source "AclGDataParser.java"


# instance fields
.field private final a:LeZ;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;LeZ;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Laso;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 47
    iput-object p3, p0, LSx;->a:LeZ;

    .line 48
    return-void
.end method


# virtual methods
.method protected a()LSq;
    .registers 2

    .prologue
    .line 52
    new-instance v0, LSq;

    invoke-direct {v0}, LSq;-><init>()V

    return-object v0
.end method

.method public a(Lase;)LSq;
    .registers 3
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Laso;->a(Lase;)Lase;

    move-result-object v0

    check-cast v0, LSq;

    return-object v0
.end method

.method protected bridge synthetic a()Lase;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, LSx;->a()LSq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lase;)Lase;
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, LSx;->a(Lase;)LSq;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lase;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 57
    instance-of v0, p1, LSq;

    const-string v1, "The entry is NOT AclEntry!"

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, LSx;->a()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 60
    check-cast p1, LSq;

    .line 61
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v3, "http://schemas.google.com/acl/2007"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 64
    const-string v2, "role"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 65
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "AclGDataParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "role = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1, v0}, LSq;->b(Ljava/lang/String;)V

    .line 84
    :cond_47
    :goto_47
    return-void

    .line 68
    :cond_48
    const-string v2, "scope"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 69
    sget-object v1, Last;->l:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string v2, "value"

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1, v1}, LSq;->c(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, v0}, LSq;->a(Ljava/lang/String;)V

    .line 73
    const-string v2, "AclGDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scope = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 74
    :cond_85
    const-string v2, "additionalRole"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, LSx;->a:LeZ;

    sget-object v2, LeV;->a:LeV;

    invoke-interface {v1, v2}, LeZ;->a(LeV;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 76
    const-string v1, "value"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "AclGDataParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "additional role = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lds;->valueOf(Ljava/lang/String;)Lds;

    move-result-object v0

    .line 79
    sget-object v1, Lds;->b:Lds;

    if-eq v0, v1, :cond_47

    .line 80
    invoke-virtual {p1, v0}, LSq;->a(Lds;)V

    goto :goto_47
.end method

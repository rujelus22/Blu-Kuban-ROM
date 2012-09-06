.class public LSC;
.super Ljava/lang/Object;
.source "DocsXmlBatchGDataSerializer.java"

# interfaces
.implements Lasv;


# instance fields
.field private final a:LarP;

.field private final a:Lasu;

.field private final a:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<+",
            "Lase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LarP;Lasu;Ljava/util/Enumeration;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LarP;",
            "Lasu;",
            "Ljava/util/Enumeration",
            "<+",
            "Lase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, LSC;->a:LarP;

    .line 52
    iput-object p2, p0, LSC;->a:Lasu;

    .line 53
    iput-object p3, p0, LSC;->a:Ljava/util/Enumeration;

    .line 54
    return-void
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "gd"

    const-string v1, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "batch"

    const-string v1, "http://schemas.google.com/gdata/batch"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "gAcl"

    const-string v1, "http://schemas.google.com/acl/2007"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string v0, "application/atom+xml"

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, LSC;->a:Lasu;

    invoke-interface {v0}, Lasu;->a()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_41

    move-result-object v2

    .line 76
    sget-object v0, Last;->e:Ljava/lang/String;

    invoke-interface {v2, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 77
    sget-object v0, Last;->e:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 79
    invoke-static {v2}, LSC;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 81
    const/4 v0, 0x1

    move v1, v0

    .line 82
    :goto_17
    iget-object v0, p0, LSC;->a:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 83
    iget-object v0, p0, LSC;->a:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lase;

    .line 84
    iget-object v3, p0, LSC;->a:LarP;

    invoke-interface {v3, v0}, LarP;->a(Lase;)Lasv;

    move-result-object v0

    check-cast v0, LSD;

    .line 87
    if-eqz v1, :cond_3c

    .line 89
    const/4 v1, 0x0

    .line 90
    const-string v3, "http://www.w3.org/2005/Atom"

    sget-object v4, Last;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    invoke-virtual {v0, v2}, LSD;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 93
    :cond_3c
    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, LSD;->a(Lorg/xmlpull/v1/XmlSerializer;I)V

    goto :goto_17

    .line 72
    :catch_41
    move-exception v0

    .line 73
    new-instance v1, Lasn;

    const-string v2, "Unable to create XmlSerializer."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :cond_4a
    if-eqz v1, :cond_53

    .line 97
    const-string v0, "http://www.w3.org/2005/Atom"

    sget-object v1, Last;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    :cond_53
    const-string v0, "http://www.w3.org/2005/Atom"

    sget-object v1, Last;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 102
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 103
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

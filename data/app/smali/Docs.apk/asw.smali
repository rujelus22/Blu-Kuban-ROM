.class public Lasw;
.super Ljava/lang/Object;
.source "XmlBatchGDataSerializer.java"

# interfaces
.implements Lasv;


# instance fields
.field private final a:LarP;

.field private final a:Lasu;

.field private final a:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(LarP;Lasu;Ljava/util/Enumeration;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lasw;->a:LarP;

    .line 40
    iput-object p2, p0, Lasw;->a:Lasu;

    .line 41
    iput-object p3, p0, Lasw;->a:Ljava/util/Enumeration;

    .line 42
    return-void
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 3
    .parameter

    .prologue
    .line 101
    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "gd"

    const-string v1, "http://schemas.google.com/g/2005"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "batch"

    const-string v1, "http://schemas.google.com/gdata/batch"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string v0, "application/atom+xml"

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lasw;->a:Lasu;

    invoke-interface {v0}, Lasu;->a()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_41

    move-result-object v2

    .line 71
    sget-object v0, Last;->e:Ljava/lang/String;

    invoke-interface {v2, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 72
    sget-object v0, Last;->e:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 74
    invoke-static {v2}, Lasw;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 76
    const/4 v0, 0x1

    move v1, v0

    .line 77
    :goto_17
    iget-object v0, p0, Lasw;->a:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 78
    iget-object v0, p0, Lasw;->a:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lase;

    .line 79
    iget-object v3, p0, Lasw;->a:LarP;

    invoke-interface {v3, v0}, LarP;->a(Lase;)Lasv;

    move-result-object v0

    check-cast v0, Lasx;

    .line 82
    if-eqz v1, :cond_3c

    .line 84
    const/4 v1, 0x0

    .line 85
    const-string v3, "http://www.w3.org/2005/Atom"

    sget-object v4, Last;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    invoke-virtual {v0, v2}, Lasx;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 88
    :cond_3c
    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Lasx;->a(Ljava/io/OutputStream;I)V

    goto :goto_17

    .line 67
    :catch_41
    move-exception v0

    .line 68
    new-instance v1, Lasn;

    const-string v2, "Unable to create XmlSerializer."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 91
    :cond_4a
    if-eqz v1, :cond_53

    .line 92
    const-string v0, "http://www.w3.org/2005/Atom"

    sget-object v1, Last;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    :cond_53
    const-string v0, "http://www.w3.org/2005/Atom"

    sget-object v1, Last;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 97
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 98
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

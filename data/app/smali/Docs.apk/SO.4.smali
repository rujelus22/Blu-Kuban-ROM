.class public LSO;
.super Lasx;
.source "XmlDocsListGDataSerializer.java"


# instance fields
.field private final a:LSs;

.field private final a:Lasu;


# direct methods
.method constructor <init>(Lasu;LSs;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lasx;-><init>(Lasu;Lase;)V

    .line 39
    iput-object p1, p0, LSO;->a:Lasu;

    .line 40
    iput-object p2, p0, LSO;->a:LSs;

    .line 41
    return-void
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 145
    :goto_7
    return-void

    .line 142
    :cond_8
    sget-object v0, Last;->q:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    sget-object v0, Last;->q:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 136
    :goto_d
    return-void

    .line 125
    :cond_e
    sget-object v0, Last;->w:Ljava/lang/String;

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 127
    sget-object v0, Last;->x:Ljava/lang/String;

    invoke-interface {p0, v3, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    :cond_1e
    invoke-static {p2}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 130
    sget-object v0, Last;->y:Ljava/lang/String;

    invoke-interface {p0, v3, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    :cond_29
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_31

    .line 135
    :cond_4d
    sget-object v0, Last;->w:Ljava/lang/String;

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    const-string v0, "authorizedApp"

    .line 99
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    const-string v2, "http://schemas.google.com/docs/2007"

    const-string v3, "authorizedApp"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    const-string v0, "http://schemas.google.com/docs/2007"

    const-string v2, "authorizedApp"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 107
    :cond_24
    return-void
.end method

.method private b(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter

    .prologue
    .line 111
    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "gd"

    const-string v1, "http://schemas.google.com/g/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1}, LSO;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 114
    return-void
.end method

.method private b(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, LSO;->a:LSs;

    invoke-virtual {v0}, LSs;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LSO;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, LSO;->a:LSs;

    invoke-virtual {v0}, LSs;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LSO;->a:LSs;

    invoke-virtual {v1}, LSs;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, LSO;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    const-string v1, "label"

    iget-object v0, p0, LSO;->a:LSs;

    invoke-virtual {v0}, LSs;->a()Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "starred"

    :goto_28
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 84
    const-string v2, "label"

    iget-object v0, p0, LSO;->a:LSs;

    invoke-virtual {v0}, LSs;->c()Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "hidden"

    :goto_38
    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 87
    const-string v2, "http://schemas.google.com/g/2005/labels#starred"

    const-string v3, "http://schemas.google.com/g/2005/labels"

    invoke-static {p1, v2, v3, v1}, LSO;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    const-string v1, "http://schemas.google.com/g/2005/labels#hidden"

    const-string v2, "http://schemas.google.com/g/2005/labels"

    invoke-static {p1, v1, v2, v0}, LSO;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    iget-object v0, p0, LSO;->a:LSs;

    invoke-virtual {v0}, LSs;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LSO;->b(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, LSO;->a:LSs;

    invoke-virtual {v0}, LSs;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, LSO;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Set;)V

    .line 93
    invoke-virtual {p0, p1, p2}, LSO;->a(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 94
    return-void

    .line 82
    :cond_60
    const-string v0, ""

    goto :goto_28

    .line 84
    :cond_63
    const-string v0, ""

    goto :goto_38
.end method

.method private static b(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 155
    :goto_7
    return-void

    .line 152
    :cond_8
    sget-object v0, Last;->A:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    sget-object v0, Last;->A:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 52
    .line 54
    :try_start_1
    iget-object v0, p0, LSO;->a:Lasu;

    invoke-interface {v0}, Lasu;->a()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_6} :catch_32

    move-result-object v0

    .line 59
    sget-object v1, Last;->e:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 60
    if-eq p2, v3, :cond_18

    .line 61
    sget-object v1, Last;->e:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 62
    invoke-direct {p0, v0}, LSO;->b(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 65
    :cond_18
    const-string v1, "http://www.w3.org/2005/Atom"

    sget-object v2, Last;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    invoke-direct {p0, v0, p2}, LSO;->b(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 67
    const-string v1, "http://www.w3.org/2005/Atom"

    sget-object v2, Last;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    if-eq p2, v3, :cond_2e

    .line 70
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 72
    :cond_2e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 73
    return-void

    .line 55
    :catch_32
    move-exception v0

    .line 56
    new-instance v1, Lasn;

    const-string v2, "Unable to create XmlSerializer."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

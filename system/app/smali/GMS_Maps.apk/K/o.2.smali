.class public Lk/O;
.super Lk/k;
.source "SourceFile"


# instance fields
.field b:Ljava/util/ArrayList;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lk/k;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/O;->b:Ljava/util/ArrayList;

    .line 39
    const-string v0, "gps"

    iput-object v0, p0, Lk/O;->d:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lk/O;->e:Z

    .line 41
    iput v1, p0, Lk/O;->f:I

    .line 73
    :try_start_13
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lk/O;->a(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_1c

    .line 77
    return-void

    .line 74
    :catch_1c
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lk/k;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/O;->b:Ljava/util/ArrayList;

    .line 39
    const-string v0, "gps"

    iput-object v0, p0, Lk/O;->d:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lk/O;->e:Z

    .line 41
    iput v1, p0, Lk/O;->f:I

    .line 81
    invoke-direct {p0, p2}, Lk/O;->a(Ljava/io/InputStream;)V

    .line 82
    return-void
.end method

.method private a(Lorg/w3c/dom/Node;)LA/j;
    .registers 4
    .parameter

    .prologue
    .line 209
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 212
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "provider"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v1, "driveabout_base_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 220
    invoke-direct {p0, p1}, Lk/O;->b(Lorg/w3c/dom/Node;)V

    .line 221
    invoke-direct {p0, p1}, Lk/O;->c(Lorg/w3c/dom/Node;)V

    .line 223
    :cond_30
    new-instance v0, Lk/p;

    invoke-direct {v0, p1}, Lk/p;-><init>(Lorg/w3c/dom/Node;)V

    .line 256
    :goto_35
    return-object v0

    .line 224
    :cond_36
    const-string v1, "locationenabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 225
    new-instance v0, Lk/s;

    invoke-direct {v0, p1}, Lk/s;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    .line 226
    :cond_44
    const-string v1, "locationdisabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 227
    new-instance v0, Lk/r;

    invoke-direct {v0, p1}, Lk/r;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    .line 228
    :cond_52
    const-string v1, "locationstatuschanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 229
    new-instance v0, Lk/t;

    invoke-direct {v0, p1}, Lk/t;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    .line 230
    :cond_60
    const-string v1, "gpsstatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 231
    new-instance v0, Lk/o;

    invoke-direct {v0, p1}, Lk/o;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    .line 232
    :cond_6e
    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 233
    new-instance v0, Lk/x;

    invoke-direct {v0, p1}, Lk/x;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    .line 234
    :cond_7c
    const-string v1, "ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 235
    invoke-static {p1}, Lk/C;->a(Lorg/w3c/dom/Node;)Lk/C;

    move-result-object v0

    goto :goto_35

    .line 236
    :cond_89
    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 237
    new-instance v0, Lk/E;

    invoke-direct {v0, p1}, Lk/E;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    .line 238
    :cond_97
    const-string v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 239
    new-instance v0, Lk/F;

    invoke-direct {v0, p1}, Lk/F;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    .line 240
    :cond_a5
    const-string v1, "networksdisabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 241
    new-instance v0, Lk/v;

    invoke-direct {v0, p1}, Lk/v;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    .line 242
    :cond_b3
    const-string v1, "networksenabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 243
    new-instance v0, Lk/w;

    invoke-direct {v0, p1}, Lk/w;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_35

    .line 244
    :cond_c2
    const-string v1, "sleep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 245
    new-instance v0, Lk/y;

    invoke-direct {v0, p1}, Lk/y;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_35

    .line 246
    :cond_d1
    const-string v1, "assert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    const-string v1, "assertNot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 247
    :cond_e1
    new-instance v0, Lk/m;

    invoke-direct {v0, p1}, Lk/m;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_35

    .line 248
    :cond_e8
    const-string v1, "target"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 249
    new-instance v0, Lk/A;

    invoke-direct {v0, p1}, Lk/A;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_35

    .line 250
    :cond_f7
    const-string v1, "camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 251
    new-instance v0, Lk/n;

    invoke-direct {v0, p1}, Lk/n;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_35

    .line 256
    :cond_106
    const/4 v0, 0x0

    goto/16 :goto_35
.end method

.method public static a(Landroid/content/Context;)Lk/k;
    .registers 4
    .parameter

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lk/O;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 52
    :try_start_10
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_28

    .line 56
    :goto_15
    if-nez v0, :cond_22

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 60
    :cond_22
    new-instance v1, Lk/O;

    invoke-direct {v1, p0, v0}, Lk/O;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    return-object v1

    .line 53
    :catch_28
    move-exception v0

    move-object v0, v1

    goto :goto_15

    :cond_2b
    move-object v0, v1

    goto :goto_15
.end method

.method private a(Ljava/io/InputStream;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 88
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 90
    const-string v2, "event-log"

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 91
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_40

    .line 92
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 93
    const-string v2, "disabled"

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x1

    :goto_2c
    iput-boolean v2, p0, Lk/O;->e:Z

    .line 94
    const-string v2, "minSdkVersion"

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_40

    .line 96
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lk/O;->f:I

    .line 100
    :cond_40
    const-string v2, "event"

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v2, v0

    .line 101
    :goto_47
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_61

    .line 102
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v5}, Lk/O;->a(Lorg/w3c/dom/Node;)LA/j;

    move-result-object v5

    .line 103
    if-eqz v5, :cond_5c

    .line 104
    iget-object v6, p0, Lk/O;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_5f
    move v2, v0

    .line 93
    goto :goto_2c

    .line 108
    :cond_61
    const-string v2, "destination"

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 109
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_129

    .line 110
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 111
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 113
    const-string v2, "uri"

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_b6

    .line 115
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/O;->a:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/google/android/maps/driveabout/app/bj;

    iget-object v1, p0, Lk/O;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/bj;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bj;->a()Z

    move-result v0

    if-nez v0, :cond_11a

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lk/O;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ac
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_ac} :catch_ac
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_ac} :catch_136
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_ac} :catch_140

    .line 166
    :catch_ac
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :cond_b6
    :try_start_b6
    const-string v2, "address"

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_14c

    .line 125
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 128
    :goto_c3
    const-string v2, "lat"

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 129
    const-string v2, "lng"

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 131
    if-eqz v5, :cond_14a

    if-eqz v6, :cond_14a

    .line 132
    new-instance v2, Ln/s;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v5, v6}, Ln/s;-><init>(II)V

    .line 137
    :goto_e8
    const-string v5, "title"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 139
    if-eqz v5, :cond_f4

    .line 140
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_f4
    new-instance v5, Lo/P;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v2, v1, v6}, Lo/P;-><init>(Ljava/lang/String;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "travelmode"

    invoke-interface {v4, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_10f

    .line 150
    const-string v2, "w"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 151
    const/4 v0, 0x2

    .line 157
    :cond_10f
    :goto_10f
    const/4 v1, 0x0

    invoke-static {v5, v0, v1}, Lcom/google/android/maps/driveabout/app/bj;->a(Lo/P;I[Lo/b;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/O;->a:Ljava/lang/String;

    .line 176
    :cond_11a
    :goto_11a
    return-void

    .line 152
    :cond_11b
    const-string v2, "b"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 153
    const/4 v0, 0x3

    goto :goto_10f

    .line 161
    :cond_129
    invoke-direct {p0}, Lk/O;->k()Lk/A;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_11a

    .line 163
    invoke-virtual {v0}, Lk/A;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/O;->a:Ljava/lang/String;
    :try_end_135
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b6 .. :try_end_135} :catch_ac
    .catch Lorg/xml/sax/SAXException; {:try_start_b6 .. :try_end_135} :catch_136
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_135} :catch_140

    goto :goto_11a

    .line 169
    :catch_136
    move-exception v0

    .line 170
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 172
    :catch_140
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_14a
    move-object v2, v1

    goto :goto_e8

    :cond_14c
    move-object v3, v1

    goto/16 :goto_c3
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lh/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/track"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sample.track"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lorg/w3c/dom/Node;)V
    .registers 6
    .parameter

    .prologue
    .line 260
    const-string v0, "gps"

    .line 261
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 262
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 263
    const-string v0, "network"

    .line 265
    :cond_18
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "provider"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private c(Lorg/w3c/dom/Node;)V
    .registers 9
    .parameter

    .prologue
    .line 270
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "provider"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lk/O;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 274
    iput-object v0, p0, Lk/O;->d:Ljava/lang/String;

    .line 275
    const/4 v4, 0x2

    .line 276
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 277
    const/4 v4, 0x1

    .line 283
    :cond_26
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "time"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v1, v0, v2

    .line 286
    iget-object v6, p0, Lk/O;->b:Ljava/util/ArrayList;

    new-instance v0, Lk/t;

    const-string v3, "gps"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lk/t;-><init>(JLjava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_49
    return-void
.end method

.method private k()Lk/A;
    .registers 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lk/O;->a()Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA/j;

    .line 201
    instance-of v2, v0, Lk/A;

    if-eqz v2, :cond_8

    .line 202
    check-cast v0, Lk/A;

    .line 205
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lk/O;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(LA/j;)V
    .registers 3
    .parameter

    .prologue
    .line 298
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lk/O;->e:Z

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lk/O;->f:I

    return v0
.end method

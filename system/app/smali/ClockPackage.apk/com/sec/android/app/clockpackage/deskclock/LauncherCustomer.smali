.class public Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;
.super Ljava/lang/Object;
.source "LauncherCustomer.java"


# static fields
.field private static mCustomerCount:I

.field private static mCustomerList:Lorg/w3c/dom/NodeList;

.field private static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->sInstance:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "customer.xml"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method private getAttribute(I)Ljava/lang/String;
    .registers 6
    .parameter "index"

    .prologue
    .line 183
    sget-object v2, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    if-eqz v2, :cond_28

    sget-object v2, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-le v2, p1, :cond_28

    .line 184
    sget-object v2, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v2, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 185
    .local v1, list:Lorg/w3c/dom/Element;
    const-string v2, "Wallpaper"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 187
    .local v0, attr:Lorg/w3c/dom/Element;
    const-string v2, "src"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .end local v0           #attr:Lorg/w3c/dom/Element;
    .end local v1           #list:Lorg/w3c/dom/Element;
    :goto_27
    return-object v2

    :cond_28
    const/4 v2, 0x0

    goto :goto_27
.end method

.method private getCustomerWallpaer(II)Ljava/lang/String;
    .registers 12
    .parameter "index"
    .parameter "mode"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 193
    const/4 v4, 0x0

    .line 194
    .local v4, wallpaper:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getAttribute(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, strAttr:Ljava/lang/String;
    if-eqz v1, :cond_49

    .line 197
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, strSlash:[Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v0, v5, -0x1

    .line 200
    .local v0, cntSlash:I
    aget-object v5, v3, v0

    if-eqz v5, :cond_49

    .line 201
    if-nez p2, :cond_4a

    .line 202
    aget-object v5, v3, v0

    const-string v6, "[.]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, strDots:[Ljava/lang/String;
    aget-object v5, v2, v8

    if-eqz v5, :cond_49

    aget-object v5, v2, v7

    if-eqz v5, :cond_49

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_small"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    .end local v0           #cntSlash:I
    .end local v2           #strDots:[Ljava/lang/String;
    .end local v3           #strSlash:[Ljava/lang/String;
    :cond_49
    :goto_49
    return-object v4

    .line 207
    .restart local v0       #cntSlash:I
    .restart local v3       #strSlash:[Ljava/lang/String;
    :cond_4a
    if-ne p2, v7, :cond_49

    .line 208
    aget-object v4, v3, v0

    goto :goto_49
.end method

.method private getImageCustomerWallpaper(II)Ljava/lang/String;
    .registers 8
    .parameter "position"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 221
    sget v3, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerCount:I

    if-gt v3, p1, :cond_6

    .line 235
    :cond_5
    :goto_5
    return-object v2

    .line 226
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1b

    .line 227
    const-string v1, "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

    .line 231
    .local v1, imagePath:Ljava/lang/String;
    :goto_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, imageFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 229
    .end local v0           #imageFile:Ljava/io/File;
    .end local v1           #imagePath:Ljava/lang/String;
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/wallpaper/drawable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getCustomerWallpaer(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #imagePath:Ljava/lang/String;
    goto :goto_b
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;
    .registers 4
    .parameter "fileName"
    .parameter "mode"

    .prologue
    .line 76
    if-nez p0, :cond_c

    .line 77
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->sInstance:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    const-string v1, "customer.xml"

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    .line 80
    :goto_9
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->sInstance:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    return-object v0

    .line 79
    :cond_c
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->sInstance:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    goto :goto_9
.end method

.method private getTagCount(Lorg/w3c/dom/NodeList;)I
    .registers 3
    .parameter "list"

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, count:I
    if-eqz p1, :cond_7

    .line 160
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 161
    :cond_7
    return v0
.end method

.method private getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 10
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 132
    sget-object v5, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_6

    if-nez p1, :cond_8

    .line 133
    :cond_6
    const/4 v5, 0x0

    .line 147
    :goto_7
    return-object v5

    .line 135
    :cond_8
    sget-object v5, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 136
    .local v3, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 137
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_33

    .line 138
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 139
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v4, :cond_33

    .line 140
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 141
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 142
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 139
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 147
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_33
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    goto :goto_7
.end method

.method private getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7
    .parameter "tagFullName"

    .prologue
    const/4 v3, 0x0

    .line 102
    sget-object v4, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    if-nez v4, :cond_7

    move-object v0, v3

    .line 115
    :cond_6
    :goto_6
    return-object v0

    .line 105
    :cond_7
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 106
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_10
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, tagName:Ljava/lang/String;
    if-nez v0, :cond_1e

    move-object v0, v3

    .line 111
    goto :goto_6

    .line 112
    :cond_1e
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 113
    goto :goto_10
.end method

.method private getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 8
    .parameter "parent"
    .parameter "tagName"

    .prologue
    .line 119
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 120
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1f

    .line 121
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 122
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v3, :cond_1f

    .line 123
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 124
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 128
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :goto_1b
    return-object v0

    .line 122
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #n:I
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 128
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private initLauncherCustomer()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 165
    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 166
    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 167
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerCount:I

    .line 168
    return-void
.end method

.method private loadXMLFile(Ljava/lang/String;I)V
    .registers 9
    .parameter "fileName"
    .parameter "mode"

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->initLauncherCustomer()V

    .line 86
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 88
    .local v2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 89
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/csc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    .line 90
    sget-object v3, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 91
    invoke-direct {p0, p2}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->setLauncherCustomer(I)V
    :try_end_34
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_34} :catch_4f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_34} :catch_69

    .line 99
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_34
    return-void

    .line 92
    :catch_35
    move-exception v1

    .line 93
    .local v1, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v3, "LauncherCustomer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParserConfigurationException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 94
    .end local v1           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_4f
    move-exception v1

    .line 95
    .local v1, ex:Lorg/xml/sax/SAXException;
    const-string v3, "LauncherCustomer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAXException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 96
    .end local v1           #ex:Lorg/xml/sax/SAXException;
    :catch_69
    move-exception v1

    .line 97
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "LauncherCustomer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private setLauncherCustomer(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 171
    if-nez p1, :cond_1d

    .line 172
    const-string v0, "Settings.Main.Display"

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 173
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "Wallpaper"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 174
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerCount:I

    .line 180
    :cond_1c
    :goto_1c
    return-void

    .line 175
    :cond_1d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    .line 176
    const-string v0, "Launcher"

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 177
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "favorites"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 178
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerCount:I

    goto :goto_1c
.end method


# virtual methods
.method public addCustomerWallpaper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, mImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, mThumbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v1, 0x7f020029

    .line 242
    .local v1, res:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    sget v3, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->mCustomerCount:I

    if-ge v0, v3, :cond_1d

    .line 243
    add-int/lit8 v2, v1, 0x1

    .end local v1           #res:I
    .local v2, res:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v1, v2, 0x1

    .end local v2           #res:I
    .restart local v1       #res:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 246
    :cond_1d
    return-void
.end method

.method public getBitmapCustomerWallpaper(Landroid/content/res/Resources;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "res"
    .parameter "resid"
    .parameter "position"
    .parameter "options"

    .prologue
    .line 305
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, imgPath:Ljava/lang/String;
    if-nez v0, :cond_c

    .line 308
    invoke-static {p1, p2, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 310
    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_b
.end method

.method public setThumbCustomerWallpaper(Landroid/widget/ImageView;IILandroid/content/res/Resources;)V
    .registers 9
    .parameter "image"
    .parameter "resid"
    .parameter "position"
    .parameter "twwallpaperResources"

    .prologue
    .line 315
    const/4 v3, 0x0

    invoke-direct {p0, p3, v3}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, imgPath:Ljava/lang/String;
    if-nez v2, :cond_f

    .line 318
    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 319
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_e
    return-void

    .line 322
    :cond_f
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_e
.end method

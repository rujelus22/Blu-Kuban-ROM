.class public Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;
.super Ljava/lang/Object;
.source "LauncherCustomer.java"


# static fields
.field private static mCustomerCount:I

.field private static mCustomerList:Lorg/w3c/dom/NodeList;

.field private static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    invoke-direct {v0}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;-><init>()V

    sput-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->sInstance:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "customer.xml"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method private getAttribute(I)Ljava/lang/String;
    .registers 6
    .parameter "index"

    .prologue
    .line 188
    sget-object v2, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    if-eqz v2, :cond_28

    sget-object v2, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-le v2, p1, :cond_28

    .line 189
    sget-object v2, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v2, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 190
    .local v1, list:Lorg/w3c/dom/Element;
    const-string v2, "Wallpaper"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 191
    .local v0, attr:Lorg/w3c/dom/Element;
    const-string v2, "src"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
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

    .line 197
    const/4 v4, 0x0

    .line 198
    .local v4, wallpaper:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getAttribute(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, strAttr:Ljava/lang/String;
    if-eqz v1, :cond_49

    .line 201
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, strSlash:[Ljava/lang/String;
    array-length v5, v3

    sub-int v0, v5, v7

    .line 204
    .local v0, cntSlash:I
    aget-object v5, v3, v0

    if-eqz v5, :cond_49

    .line 205
    if-nez p2, :cond_4a

    .line 206
    aget-object v5, v3, v0

    const-string v6, "[.]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, strDots:[Ljava/lang/String;
    aget-object v5, v2, v8

    if-eqz v5, :cond_49

    aget-object v5, v2, v7

    if-eqz v5, :cond_49

    .line 209
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

    .line 217
    .end local v0           #cntSlash:I
    .end local v2           #strDots:[Ljava/lang/String;
    .end local v3           #strSlash:[Ljava/lang/String;
    :cond_49
    :goto_49
    return-object v4

    .line 212
    .restart local v0       #cntSlash:I
    .restart local v3       #strSlash:[Ljava/lang/String;
    :cond_4a
    if-ne p2, v7, :cond_49

    .line 213
    aget-object v4, v3, v0

    goto :goto_49
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;
    .registers 4
    .parameter "fileName"
    .parameter "mode"

    .prologue
    .line 80
    if-nez p0, :cond_c

    .line 81
    sget-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->sInstance:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    const-string v1, "customer.xml"

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    .line 84
    :goto_9
    sget-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->sInstance:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    return-object v0

    .line 83
    :cond_c
    sget-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->sInstance:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    goto :goto_9
.end method

.method private getTagCount(Lorg/w3c/dom/NodeList;)I
    .registers 3
    .parameter "list"

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, count:I
    if-eqz p1, :cond_7

    .line 163
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 164
    :cond_7
    return v0
.end method

.method private getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 10
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 135
    sget-object v5, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_6

    if-nez p1, :cond_8

    .line 136
    :cond_6
    const/4 v5, 0x0

    .line 150
    :goto_7
    return-object v5

    .line 138
    :cond_8
    sget-object v5, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 139
    .local v3, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 140
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_33

    .line 141
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 142
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v4, :cond_33

    .line 143
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 144
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 145
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 142
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 150
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
    const/4 v4, 0x0

    .line 105
    sget-object v3, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    if-nez v3, :cond_7

    move-object v3, v4

    .line 118
    :goto_6
    return-object v3

    .line 108
    :cond_7
    sget-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 109
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_10
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 112
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, tagName:Ljava/lang/String;
    if-nez v0, :cond_1e

    move-object v3, v4

    .line 114
    goto :goto_6

    .line 115
    :cond_1e
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 116
    goto :goto_10

    .end local v1           #tagName:Ljava/lang/String;
    :cond_23
    move-object v3, v0

    .line 118
    goto :goto_6
.end method

.method private getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 8
    .parameter "parent"
    .parameter "tagName"

    .prologue
    .line 122
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 123
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_20

    .line 124
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 125
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v3, :cond_20

    .line 126
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 127
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object v4, v0

    .line 131
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :goto_1c
    return-object v4

    .line 125
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #n:I
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 131
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_20
    const/4 v4, 0x0

    goto :goto_1c
.end method

.method private initLauncherCustomer()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 168
    sput-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 169
    sput-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 170
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerCount:I

    .line 171
    return-void
.end method

.method private loadXMLFile(Ljava/lang/String;I)V
    .registers 10
    .parameter "fileName"
    .parameter "mode"

    .prologue
    const-string v6, "LauncherCustomer"

    .line 89
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->initLauncherCustomer()V

    .line 90
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 91
    .local v2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 92
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

    sput-object v3, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    .line 93
    sget-object v3, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 94
    invoke-direct {p0, p2}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->setLauncherCustomer(I)V
    :try_end_36
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_36} :catch_37
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_36} :catch_52
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_36} :catch_6d

    .line 102
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_36
    return-void

    .line 95
    :catch_37
    move-exception v3

    move-object v1, v3

    .line 96
    .local v1, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v3, "LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ParserConfigurationException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 97
    .end local v1           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_52
    move-exception v3

    move-object v1, v3

    .line 98
    .local v1, ex:Lorg/xml/sax/SAXException;
    const-string v3, "LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAXException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 99
    .end local v1           #ex:Lorg/xml/sax/SAXException;
    :catch_6d
    move-exception v3

    move-object v1, v3

    .line 100
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private setLauncherCustomer(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 176
    if-nez p1, :cond_1d

    .line 177
    const-string v0, "Settings.Main.Display"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 178
    sget-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "Wallpaper"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 179
    sget-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerCount:I

    .line 185
    :cond_1c
    :goto_1c
    return-void

    .line 180
    :cond_1d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    .line 181
    const-string v0, "Launcher"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 182
    sget-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "favorites"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 183
    sget-object v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerCount:I

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
    .line 246
    .local p1, mImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, mThumbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v1, 0x7f020029

    .line 247
    .local v1, res:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    sget v3, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerCount:I

    if-ge v0, v3, :cond_1d

    .line 248
    add-int/lit8 v2, v1, 0x1

    .end local v1           #res:I
    .local v2, res:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v1, v2, 0x1

    .end local v2           #res:I
    .restart local v1       #res:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 251
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
    .line 297
    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, imgPath:Ljava/lang/String;
    if-nez v0, :cond_c

    .line 300
    invoke-static {p1, p2, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 302
    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_b
.end method

.method public getCustomerCount()I
    .registers 2

    .prologue
    .line 221
    sget v0, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerCount:I

    return v0
.end method

.method public getImageCustomerWallpaper(II)Ljava/lang/String;
    .registers 8
    .parameter "position"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 226
    sget v2, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->mCustomerCount:I

    if-gt v2, p1, :cond_7

    move-object v2, v4

    .line 241
    :goto_6
    return-object v2

    .line 231
    :cond_7
    const/4 v2, 0x2

    if-ne p2, v2, :cond_19

    .line 232
    const-string v1, "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

    .line 236
    .local v1, imagePath:Ljava/lang/String;
    :goto_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, imageFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_31

    move-object v2, v4

    .line 238
    goto :goto_6

    .line 234
    .end local v0           #imageFile:Ljava/io/File;
    .end local v1           #imagePath:Ljava/lang/String;
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/wallpaper/drawable/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getCustomerWallpaer(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #imagePath:Ljava/lang/String;
    goto :goto_c

    .line 240
    .restart local v0       #imageFile:Ljava/io/File;
    :cond_31
    const-string v2, "LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method public setThumbCustomerWallpaper(Landroid/widget/ImageView;II)V
    .registers 7
    .parameter "image"
    .parameter "resid"
    .parameter "position"

    .prologue
    .line 306
    const/4 v2, 0x0

    invoke-virtual {p0, p3, v2}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, imgPath:Ljava/lang/String;
    if-nez v1, :cond_b

    .line 309
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    :goto_a
    return-void

    .line 311
    :cond_b
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a
.end method

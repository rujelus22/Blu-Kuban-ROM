.class Lcom/sprint/w/installer/LayoutManager$Layout;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Layout"
.end annotation


# instance fields
.field mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/LayoutManager$AppMeta;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultWallpaper:Ljava/lang/String;

.field mFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/LayoutManager$FolderMeta;",
            ">;"
        }
    .end annotation
.end field

.field mLiveFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;",
            ">;"
        }
    .end annotation
.end field

.field mSearchWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;",
            ">;"
        }
    .end annotation
.end field

.field mShortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;",
            ">;"
        }
    .end annotation
.end field

.field mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/LayoutManager$WidgetMeta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/LayoutManager$Layout;->mApps:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/LayoutManager$Layout;->mWidgets:Ljava/util/ArrayList;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/LayoutManager$Layout;->mShortcuts:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/LayoutManager$Layout;->mSearchWidgets:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/LayoutManager$Layout;->mLiveFolders:Ljava/util/ArrayList;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/LayoutManager$Layout;->mFolders:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Landroid/content/Context;I)Z
    .registers 20
    .parameter "is"
    .parameter "mContext"
    .parameter "offset"

    .prologue
    .line 264
    const/4 v11, 0x0

    .line 266
    .local v11, success:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mSearchWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mLiveFolders:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 272
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 273
    .local v2, db:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 275
    .local v3, doc:Lorg/w3c/dom/Document;
    const-string v13, "application"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 276
    .local v10, nl:Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 277
    .local v9, n:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_44
    if-ge v7, v9, :cond_c0

    .line 278
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4c} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_4c} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_4c} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_4c} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4c} :catch_31f

    .line 280
    .local v5, elem:Lorg/w3c/dom/Element;
    :try_start_4c
    const-string v13, "layout"

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5f

    .line 277
    :goto_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 284
    :cond_5f
    move/from16 v0, p3

    invoke-static {v5, v0}, Lcom/sprint/w/installer/LayoutManager$AppMeta;->fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$AppMeta;

    move-result-object v1

    .line 285
    .local v1, app:Lcom/sprint/w/installer/LayoutManager$AppMeta;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found app: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->isMotoBlur()Z

    move-result v13

    if-eqz v13, :cond_8d

    .line 288
    iget v13, v1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->screen:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->screen:I

    .line 290
    :cond_8d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_94} :catch_95
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_94} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4c .. :try_end_94} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_4c .. :try_end_94} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_4c .. :try_end_94} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_94} :catch_31f

    goto :goto_5c

    .line 291
    .end local v1           #app:Lcom/sprint/w/installer/LayoutManager$AppMeta;
    :catch_95
    move-exception v4

    .line 292
    .local v4, e:Ljava/lang/Exception;
    :try_start_96
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping invalid item "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_b4} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_96 .. :try_end_b4} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_96 .. :try_end_b4} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_96 .. :try_end_b4} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_b4} :catch_31f

    goto :goto_5c

    .line 443
    .end local v2           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #elem:Lorg/w3c/dom/Element;
    .end local v7           #i:I
    .end local v9           #n:I
    .end local v10           #nl:Lorg/w3c/dom/NodeList;
    :catch_b5
    move-exception v4

    .line 444
    .local v4, e:Ljava/io/IOException;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    const-string v14, "Error reading layout.xml file"

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    .end local v4           #e:Ljava/io/IOException;
    :goto_bf
    return v11

    .line 298
    .restart local v2       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #doc:Lorg/w3c/dom/Document;
    .restart local v7       #i:I
    .restart local v9       #n:I
    .restart local v10       #nl:Lorg/w3c/dom/NodeList;
    :cond_c0
    :try_start_c0
    const-string v13, "voicemail"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 299
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 300
    const/4 v7, 0x0

    :goto_cb
    if-ge v7, v9, :cond_1a3

    .line 301
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_d3} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c0 .. :try_end_d3} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_c0 .. :try_end_d3} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_c0 .. :try_end_d3} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_c0 .. :try_end_d3} :catch_31f

    .line 304
    .restart local v5       #elem:Lorg/w3c/dom/Element;
    :try_start_d3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.coremobility.app.vnotes"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 305
    move/from16 v0, p3

    invoke-static {v5, v0}, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$WidgetMeta;

    move-result-object v12

    .line 306
    .local v12, w:Lcom/sprint/w/installer/LayoutManager$WidgetMeta;
    const/4 v13, 0x1

    iput v13, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->h:I

    .line 307
    const/4 v13, 0x1

    iput v13, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->w:I

    .line 308
    const-string v13, "com.coremobility.app.vnotes.CM_VnoteHomeScreenWidget"

    iput-object v13, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->className:Ljava/lang/String;

    .line 309
    const-string v13, "com.coremobility.app.vnotes"

    iput-object v13, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->packageName:Ljava/lang/String;

    .line 310
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found widget: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->className:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->isMotoBlur()Z

    move-result v13

    if-eqz v13, :cond_119

    .line 313
    iget v13, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->screen:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->screen:I

    .line 315
    :cond_119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_120
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d3 .. :try_end_120} :catch_123
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_120} :catch_177
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_120} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d3 .. :try_end_120} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_d3 .. :try_end_120} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_d3 .. :try_end_120} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_d3 .. :try_end_120} :catch_31f

    .line 300
    .end local v12           #w:Lcom/sprint/w/installer/LayoutManager$WidgetMeta;
    :goto_120
    add-int/lit8 v7, v7, 0x1

    goto :goto_cb

    .line 316
    :catch_123
    move-exception v4

    .line 320
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_124
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.sprint.voicemail"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 321
    move/from16 v0, p3

    invoke-static {v5, v0}, Lcom/sprint/w/installer/LayoutManager$AppMeta;->fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$AppMeta;

    move-result-object v1

    .line 322
    .restart local v1       #app:Lcom/sprint/w/installer/LayoutManager$AppMeta;
    const-string v13, "com.sprint.voicemail.VoiceMailActivity"

    iput-object v13, v1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->className:Ljava/lang/String;

    .line 323
    const-string v13, "com.sprint.voicemail"

    iput-object v13, v1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->packageName:Ljava/lang/String;

    .line 324
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found app: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->className:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->isMotoBlur()Z

    move-result v13

    if-eqz v13, :cond_164

    .line 327
    iget v13, v1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->screen:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->screen:I

    .line 329
    :cond_164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_124 .. :try_end_16b} :catch_16c
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_16b} :catch_177
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_16b} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_124 .. :try_end_16b} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_124 .. :try_end_16b} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_124 .. :try_end_16b} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_124 .. :try_end_16b} :catch_31f

    goto :goto_120

    .line 331
    .end local v1           #app:Lcom/sprint/w/installer/LayoutManager$AppMeta;
    :catch_16c
    move-exception v6

    .line 332
    .local v6, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_16d
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    const-string v14, "voicemail application not found"

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_176} :catch_177
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_176} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_16d .. :try_end_176} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_16d .. :try_end_176} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_16d .. :try_end_176} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_16d .. :try_end_176} :catch_31f

    goto :goto_120

    .line 335
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_177
    move-exception v4

    .line 336
    .local v4, e:Ljava/lang/Exception;
    :try_start_178
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping invalid item "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_196
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_196} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_178 .. :try_end_196} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_178 .. :try_end_196} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_178 .. :try_end_196} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_178 .. :try_end_196} :catch_31f

    goto :goto_120

    .line 445
    .end local v2           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #elem:Lorg/w3c/dom/Element;
    .end local v7           #i:I
    .end local v9           #n:I
    .end local v10           #nl:Lorg/w3c/dom/NodeList;
    :catch_197
    move-exception v4

    .line 446
    .local v4, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    const-string v14, "Error creating XML parcer"

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bf

    .line 340
    .end local v4           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v2       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #doc:Lorg/w3c/dom/Document;
    .restart local v7       #i:I
    .restart local v9       #n:I
    .restart local v10       #nl:Lorg/w3c/dom/NodeList;
    :cond_1a3
    :try_start_1a3
    const-string v13, "widget"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 341
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 342
    const/4 v7, 0x0

    :goto_1ae
    if-ge v7, v9, :cond_21a

    .line 343
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1b6} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a3 .. :try_end_1b6} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1a3 .. :try_end_1b6} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_1a3 .. :try_end_1b6} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_1a3 .. :try_end_1b6} :catch_31f

    .line 345
    .restart local v5       #elem:Lorg/w3c/dom/Element;
    :try_start_1b6
    move/from16 v0, p3

    invoke-static {v5, v0}, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$WidgetMeta;

    move-result-object v12

    .line 346
    .restart local v12       #w:Lcom/sprint/w/installer/LayoutManager$WidgetMeta;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found widget: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->className:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->isMotoBlur()Z

    move-result v13

    if-eqz v13, :cond_1e4

    .line 349
    iget v13, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->screen:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->screen:I

    .line 351
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1eb} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1eb} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1b6 .. :try_end_1eb} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1b6 .. :try_end_1eb} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_1b6 .. :try_end_1eb} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_1b6 .. :try_end_1eb} :catch_31f

    .line 342
    .end local v12           #w:Lcom/sprint/w/installer/LayoutManager$WidgetMeta;
    :goto_1eb
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ae

    .line 352
    :catch_1ee
    move-exception v4

    .line 353
    .local v4, e:Ljava/lang/Exception;
    :try_start_1ef
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping invalid item "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20d
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_20d} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1ef .. :try_end_20d} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1ef .. :try_end_20d} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_1ef .. :try_end_20d} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_1ef .. :try_end_20d} :catch_31f

    goto :goto_1eb

    .line 447
    .end local v2           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #elem:Lorg/w3c/dom/Element;
    .end local v7           #i:I
    .end local v9           #n:I
    .end local v10           #nl:Lorg/w3c/dom/NodeList;
    :catch_20e
    move-exception v4

    .line 448
    .local v4, e:Ljavax/xml/parsers/FactoryConfigurationError;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    const-string v14, "Error creating XML parcer"

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bf

    .line 357
    .end local v4           #e:Ljavax/xml/parsers/FactoryConfigurationError;
    .restart local v2       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #doc:Lorg/w3c/dom/Document;
    .restart local v7       #i:I
    .restart local v9       #n:I
    .restart local v10       #nl:Lorg/w3c/dom/NodeList;
    :cond_21a
    :try_start_21a
    const-string v13, "shortcut"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 358
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 359
    const/4 v7, 0x0

    :goto_225
    if-ge v7, v9, :cond_2a2

    .line 360
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 361
    .restart local v5       #elem:Lorg/w3c/dom/Element;
    const-string v13, "layout"

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_23a} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_21a .. :try_end_23a} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_21a .. :try_end_23a} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_21a .. :try_end_23a} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_21a .. :try_end_23a} :catch_31f

    move-result v13

    if-nez v13, :cond_240

    .line 359
    :goto_23d
    add-int/lit8 v7, v7, 0x1

    goto :goto_225

    .line 366
    :cond_240
    :try_start_240
    move/from16 v0, p3

    invoke-static {v5, v0}, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;

    move-result-object v8

    .line 367
    .local v8, m:Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found shortcut: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->intent:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->isMotoBlur()Z

    move-result v13

    if-eqz v13, :cond_26e

    .line 370
    iget v13, v8, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->screen:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v8, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->screen:I

    .line 372
    :cond_26e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_275} :catch_276
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_275} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_240 .. :try_end_275} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_240 .. :try_end_275} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_240 .. :try_end_275} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_240 .. :try_end_275} :catch_31f

    goto :goto_23d

    .line 373
    .end local v8           #m:Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;
    :catch_276
    move-exception v4

    .line 374
    .local v4, e:Ljava/lang/Exception;
    :try_start_277
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping invalid item "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_295
    .catch Ljava/io/IOException; {:try_start_277 .. :try_end_295} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_277 .. :try_end_295} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_277 .. :try_end_295} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_277 .. :try_end_295} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_277 .. :try_end_295} :catch_31f

    goto :goto_23d

    .line 449
    .end local v2           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #elem:Lorg/w3c/dom/Element;
    .end local v7           #i:I
    .end local v9           #n:I
    .end local v10           #nl:Lorg/w3c/dom/NodeList;
    :catch_296
    move-exception v4

    .line 450
    .local v4, e:Lorg/xml/sax/SAXException;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    const-string v14, "Error parsing layout.xml"

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bf

    .line 378
    .end local v4           #e:Lorg/xml/sax/SAXException;
    .restart local v2       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #doc:Lorg/w3c/dom/Document;
    .restart local v7       #i:I
    .restart local v9       #n:I
    .restart local v10       #nl:Lorg/w3c/dom/NodeList;
    :cond_2a2
    :try_start_2a2
    const-string v13, "search"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 379
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 380
    const/4 v7, 0x0

    :goto_2ad
    if-ge v7, v9, :cond_32b

    .line 381
    new-instance v8, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;

    invoke-direct {v8}, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;-><init>()V

    .line 382
    .local v8, m:Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;
    :try_end_2ba
    .catch Ljava/io/IOException; {:try_start_2a2 .. :try_end_2ba} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2a2 .. :try_end_2ba} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2a2 .. :try_end_2ba} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_2a2 .. :try_end_2ba} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_2a2 .. :try_end_2ba} :catch_31f

    .line 384
    .restart local v5       #elem:Lorg/w3c/dom/Element;
    :try_start_2ba
    const-string v13, "screen"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int v13, v13, p3

    iput v13, v8, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;->screen:I

    .line 385
    const-string v13, "x"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;->x:I

    .line 386
    const-string v13, "y"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;->y:I

    .line 387
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    const-string v14, "Found search widget"

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->isMotoBlur()Z

    move-result v13

    if-eqz v13, :cond_2f5

    .line 390
    iget v13, v8, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;->screen:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v8, Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;->screen:I

    .line 392
    :cond_2f5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mSearchWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2fc
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2fc} :catch_2ff
    .catch Ljava/io/IOException; {:try_start_2ba .. :try_end_2fc} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2ba .. :try_end_2fc} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2ba .. :try_end_2fc} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_2ba .. :try_end_2fc} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_2ba .. :try_end_2fc} :catch_31f

    .line 380
    :goto_2fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ad

    .line 393
    :catch_2ff
    move-exception v4

    .line 394
    .local v4, e:Ljava/lang/Exception;
    :try_start_300
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping invalid item "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31e
    .catch Ljava/io/IOException; {:try_start_300 .. :try_end_31e} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_300 .. :try_end_31e} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_300 .. :try_end_31e} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_300 .. :try_end_31e} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_300 .. :try_end_31e} :catch_31f

    goto :goto_2fc

    .line 451
    .end local v2           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #elem:Lorg/w3c/dom/Element;
    .end local v7           #i:I
    .end local v8           #m:Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;
    .end local v9           #n:I
    .end local v10           #nl:Lorg/w3c/dom/NodeList;
    :catch_31f
    move-exception v4

    .line 452
    .local v4, e:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    const-string v14, "Error parsing layout.xml"

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bf

    .line 398
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v2       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #doc:Lorg/w3c/dom/Document;
    .restart local v7       #i:I
    .restart local v9       #n:I
    .restart local v10       #nl:Lorg/w3c/dom/NodeList;
    :cond_32b
    :try_start_32b
    const-string v13, "live-folder"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 399
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 400
    const/4 v7, 0x0

    :goto_336
    if-ge v7, v9, :cond_3a2

    .line 401
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;
    :try_end_33e
    .catch Ljava/io/IOException; {:try_start_32b .. :try_end_33e} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_32b .. :try_end_33e} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_32b .. :try_end_33e} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_32b .. :try_end_33e} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_32b .. :try_end_33e} :catch_31f

    .line 403
    .restart local v5       #elem:Lorg/w3c/dom/Element;
    :try_start_33e
    move/from16 v0, p3

    invoke-static {v5, v0}, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;

    move-result-object v8

    .line 404
    .local v8, m:Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found live folder: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->uri:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->isMotoBlur()Z

    move-result v13

    if-eqz v13, :cond_378

    .line 407
    iget v13, v8, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->screen:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v8, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->screen:I

    .line 409
    :cond_378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mLiveFolders:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37f
    .catch Ljava/lang/Exception; {:try_start_33e .. :try_end_37f} :catch_382
    .catch Ljava/io/IOException; {:try_start_33e .. :try_end_37f} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_33e .. :try_end_37f} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_33e .. :try_end_37f} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_33e .. :try_end_37f} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_33e .. :try_end_37f} :catch_31f

    .line 400
    .end local v8           #m:Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;
    :goto_37f
    add-int/lit8 v7, v7, 0x1

    goto :goto_336

    .line 410
    :catch_382
    move-exception v4

    .line 411
    .local v4, e:Ljava/lang/Exception;
    :try_start_383
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping invalid item "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37f

    .line 415
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #elem:Lorg/w3c/dom/Element;
    :cond_3a2
    const-string v13, "folder"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 416
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 417
    const/4 v7, 0x0

    :goto_3ad
    if-ge v7, v9, :cond_40d

    .line 418
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;
    :try_end_3b5
    .catch Ljava/io/IOException; {:try_start_383 .. :try_end_3b5} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_383 .. :try_end_3b5} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_383 .. :try_end_3b5} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_383 .. :try_end_3b5} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_383 .. :try_end_3b5} :catch_31f

    .line 420
    .restart local v5       #elem:Lorg/w3c/dom/Element;
    :try_start_3b5
    move/from16 v0, p3

    invoke-static {v5, v0}, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$FolderMeta;

    move-result-object v8

    .line 421
    .local v8, m:Lcom/sprint/w/installer/LayoutManager$FolderMeta;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found folder: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->isMotoBlur()Z

    move-result v13

    if-eqz v13, :cond_3e3

    .line 424
    iget v13, v8, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->screen:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v8, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->screen:I

    .line 426
    :cond_3e3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3ea
    .catch Ljava/lang/Exception; {:try_start_3b5 .. :try_end_3ea} :catch_3ed
    .catch Ljava/io/IOException; {:try_start_3b5 .. :try_end_3ea} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3b5 .. :try_end_3ea} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3b5 .. :try_end_3ea} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_3b5 .. :try_end_3ea} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_3b5 .. :try_end_3ea} :catch_31f

    .line 417
    .end local v8           #m:Lcom/sprint/w/installer/LayoutManager$FolderMeta;
    :goto_3ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_3ad

    .line 427
    :catch_3ed
    move-exception v4

    .line 428
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_3ee
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping invalid item "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3ea

    .line 432
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #elem:Lorg/w3c/dom/Element;
    :cond_40d
    const-string v13, "wallpaper"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 433
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 434
    if-lez v9, :cond_437

    .line 435
    add-int/lit8 v13, v9, -0x1

    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 436
    .restart local v5       #elem:Lorg/w3c/dom/Element;
    const-string v13, "src"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sprint/w/installer/LayoutManager$Layout;->mDefaultWallpaper:Ljava/lang/String;

    .line 437
    const/4 v13, 0x1

    if-le v9, v13, :cond_437

    .line 438
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v13

    const-string v14, "Ignoring all wallpaper definitions before the last one."

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V
    :try_end_437
    .catch Ljava/io/IOException; {:try_start_3ee .. :try_end_437} :catch_b5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3ee .. :try_end_437} :catch_197
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3ee .. :try_end_437} :catch_20e
    .catch Lorg/xml/sax/SAXException; {:try_start_3ee .. :try_end_437} :catch_296
    .catch Ljava/lang/RuntimeException; {:try_start_3ee .. :try_end_437} :catch_31f

    .line 442
    .end local v5           #elem:Lorg/w3c/dom/Element;
    :cond_437
    const/4 v11, 0x1

    goto/16 :goto_bf
.end method

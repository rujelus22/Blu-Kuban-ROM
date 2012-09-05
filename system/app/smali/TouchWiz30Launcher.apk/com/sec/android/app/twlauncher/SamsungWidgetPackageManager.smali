.class public Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
.super Ljava/lang/Object;
.source "SamsungWidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;
    }
.end annotation


# static fields
.field private static sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;


# instance fields
.field private mIsWidgetLoaded:Z

.field private final mItemCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private mSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

.field private mWidgetLoaderThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/app/ActivityGroup;)V
    .registers 4
    .parameter "group"

    .prologue
    const/16 v1, 0xa

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    .line 112
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->initInstance(Landroid/app/ActivityGroup;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadWidgets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadYahooWidgetForCsc()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    return p1
.end method

.method private findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 417
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_3f

    .line 421
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 422
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_27
    if-ge v3, v2, :cond_3f

    .line 423
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 424
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 425
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 426
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 431
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_3f
    return-object v6
.end method

.method public static getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .registers 2
    .parameter "group"

    .prologue
    .line 98
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    if-nez v0, :cond_e

    .line 99
    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;-><init>(Landroid/app/ActivityGroup;)V

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    .line 104
    :goto_b
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0

    .line 101
    :cond_e
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->initInstance(Landroid/app/ActivityGroup;)V

    goto :goto_b
.end method

.method private loadWidgets(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 399
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v2, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 405
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private loadYahooWidgetForCsc()Z
    .registers 23

    .prologue
    .line 773
    const-string v1, "/system/csc/others.xml"

    .line 774
    .local v1, OTHERS_CSC_FILE:Ljava/lang/String;
    const-string v2, "AppWidget"

    .line 775
    .local v2, TAG_APPWIDGET:Ljava/lang/String;
    const-string v3, "Yahoo"

    .line 776
    .local v3, TAG_YAHOO:Ljava/lang/String;
    const-string v5, "On"

    .line 777
    .local v5, YAHOO_ON:Ljava/lang/String;
    const-string v4, "Off"

    .line 780
    .local v4, YAHOO_OFF:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 782
    .local v12, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_e
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 783
    .local v6, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v19, Ljava/io/File;

    const-string v20, "/system/csc/others.xml"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v16

    .line 784
    .local v16, mDoc:Lorg/w3c/dom/Document;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v17

    .line 785
    .local v17, mRoot:Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 786
    .local v9, children:Lorg/w3c/dom/NodeList;
    if-eqz v9, :cond_a9

    .line 787
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .line 788
    .local v18, n:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2e
    move/from16 v0, v18

    if-ge v13, v0, :cond_a9

    .line 789
    invoke-interface {v9, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 790
    .local v7, child:Lorg/w3c/dom/Node;
    const-string v19, "AppWidget"

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8b

    .line 791
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 792
    .local v10, children2:Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_8b

    .line 793
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    .line 794
    .local v15, m:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_4d
    if-ge v14, v15, :cond_8b

    .line 795
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 796
    .local v8, child2:Lorg/w3c/dom/Node;
    const-string v19, "Yahoo"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_88

    .line 797
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    const-string v20, "On"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_72

    .line 798
    const/16 v19, 0x1

    .line 817
    .end local v6           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #child:Lorg/w3c/dom/Node;
    .end local v8           #child2:Lorg/w3c/dom/Node;
    .end local v9           #children:Lorg/w3c/dom/NodeList;
    .end local v10           #children2:Lorg/w3c/dom/NodeList;
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #m:I
    .end local v16           #mDoc:Lorg/w3c/dom/Document;
    .end local v17           #mRoot:Lorg/w3c/dom/Node;
    .end local v18           #n:I
    :goto_71
    return v19

    .line 799
    .restart local v6       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7       #child:Lorg/w3c/dom/Node;
    .restart local v8       #child2:Lorg/w3c/dom/Node;
    .restart local v9       #children:Lorg/w3c/dom/NodeList;
    .restart local v10       #children2:Lorg/w3c/dom/NodeList;
    .restart local v13       #i:I
    .restart local v14       #j:I
    .restart local v15       #m:I
    .restart local v16       #mDoc:Lorg/w3c/dom/Document;
    .restart local v17       #mRoot:Lorg/w3c/dom/Node;
    .restart local v18       #n:I
    :cond_72
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Off"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_7f} :catch_8e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_7f} :catch_ac
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_7f} :catch_c8

    move-result v19

    if-eqz v19, :cond_85

    .line 801
    const/16 v19, 0x0

    goto :goto_71

    .line 803
    :cond_85
    const/16 v19, 0x1

    goto :goto_71

    .line 794
    :cond_88
    add-int/lit8 v14, v14, 0x1

    goto :goto_4d

    .line 788
    .end local v8           #child2:Lorg/w3c/dom/Node;
    .end local v10           #children2:Lorg/w3c/dom/NodeList;
    .end local v14           #j:I
    .end local v15           #m:I
    :cond_8b
    add-int/lit8 v13, v13, 0x1

    goto :goto_2e

    .line 810
    .end local v6           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #child:Lorg/w3c/dom/Node;
    .end local v9           #children:Lorg/w3c/dom/NodeList;
    .end local v13           #i:I
    .end local v16           #mDoc:Lorg/w3c/dom/Document;
    .end local v17           #mRoot:Lorg/w3c/dom/Node;
    .end local v18           #n:I
    :catch_8e
    move-exception v11

    .line 811
    .local v11, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v19, "Launcher.SWidgetPkgMgr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ParserConfigurationException:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .end local v11           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_a9
    :goto_a9
    const/16 v19, 0x1

    goto :goto_71

    .line 812
    :catch_ac
    move-exception v11

    .line 813
    .local v11, ex:Lorg/xml/sax/SAXException;
    const-string v19, "Launcher.SWidgetPkgMgr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SAXException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 814
    .end local v11           #ex:Lorg/xml/sax/SAXException;
    :catch_c8
    move-exception v11

    .line 815
    .local v11, ex:Ljava/io/IOException;
    const-string v19, "Launcher.SWidgetPkgMgr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9
.end method

.method private makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .registers 20
    .parameter "context"
    .parameter "info"

    .prologue
    .line 436
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .local v4, componentName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 439
    .local v6, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    const/4 v12, 0x0

    .line 440
    .local v12, retArray:[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-nez v6, :cond_e1

    .line 441
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 442
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_b9

    .line 443
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 444
    .local v10, keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v9, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_33
    :goto_33
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_64

    .line 446
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 447
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, "com.samsung.sec.android.SAMSUNG_WIDGET"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v14, v15, :cond_33

    const-string v14, "com.samsung.sec.android.SAMSUNG_WIDGET"

    const/4 v15, 0x0

    const-string v16, "com.samsung.sec.android.SAMSUNG_WIDGET"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33

    .line 449
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 452
    .end local v7           #key:Ljava/lang/String;
    :cond_64
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 453
    .local v8, keySize:I
    if-lez v8, :cond_b7

    .line 464
    new-array v12, v8, [Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 466
    const/4 v5, 0x0

    .local v5, i:I
    :goto_6d
    if-ge v5, v8, :cond_75

    .line 467
    const/4 v14, 0x0

    aput-object v14, v12, v5

    .line 466
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 470
    :cond_75
    const/4 v11, 0x0

    .local v11, lp:I
    :goto_76
    if-ge v11, v8, :cond_a3

    .line 471
    new-instance v13, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v13, v14}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;-><init>(Ljava/lang/String;)V

    .line 473
    .local v13, widgetItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2, v14}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItemFromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9d

    .line 474
    iget v14, v13, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I

    if-ltz v14, :cond_a0

    .line 475
    iget v14, v13, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I

    aput-object v13, v12, v14

    .line 470
    :cond_9d
    :goto_9d
    add-int/lit8 v11, v11, 0x1

    goto :goto_76

    .line 477
    :cond_a0
    aput-object v13, v12, v11

    goto :goto_9d

    .line 481
    .end local v13           #widgetItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_a3
    const/4 v5, 0x0

    :goto_a4
    array-length v14, v12

    if-ge v5, v14, :cond_b7

    .line 482
    aget-object v14, v12, v5

    if-eqz v14, :cond_b4

    .line 483
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    aget-object v15, v12, v5

    invoke-virtual {v14, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_b4
    add-int/lit8 v5, v5, 0x1

    goto :goto_a4

    .end local v5           #i:I
    .end local v11           #lp:I
    :cond_b7
    move-object v14, v12

    .line 501
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v8           #keySize:I
    .end local v9           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b8
    return-object v14

    .line 490
    .restart local v3       #bundle:Landroid/os/Bundle;
    :cond_b9
    new-instance v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .end local v6           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v14}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;-><init>(Ljava/lang/String;)V

    .line 491
    .restart local v6       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z

    move-result v14

    if-eqz v14, :cond_df

    .line 492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const/4 v14, 0x1

    new-array v12, v14, [Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 494
    const/4 v14, 0x0

    aput-object v6, v12, v14

    move-object v14, v12

    .line 495
    goto :goto_b8

    .line 498
    :cond_df
    const/4 v14, 0x0

    goto :goto_b8

    .end local v3           #bundle:Landroid/os/Bundle;
    :cond_e1
    move-object v14, v12

    .line 501
    goto :goto_b8
.end method

.method private declared-synchronized stopAndWaitForWidgetsLoader()V
    .registers 4

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->stop()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1b

    .line 174
    :try_start_12
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1b
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_19} :catch_1e

    .line 179
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    .line 164
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :catch_1e
    move-exception v0

    goto :goto_19
.end method

.method private unbindCachedIconDrawable(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 766
    if-eqz p1, :cond_8

    .line 767
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 769
    :cond_8
    return-void
.end method

.method private unbindCachedIconDrawables()V
    .registers 5

    .prologue
    .line 759
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 760
    .local v1, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_a

    .line 763
    .end local v1           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_1d
    return-void
.end method

.method private updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z
    .registers 26
    .parameter "context"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 507
    .local v9, manager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 509
    .local v3, c:Landroid/content/Context;
    :try_start_5
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1c} :catch_22

    move-result-object v3

    .line 515
    :goto_1d
    if-nez v3, :cond_27

    .line 516
    const/16 v18, 0x0

    .line 606
    :goto_21
    return v18

    .line 511
    :catch_22
    move-exception v7

    .line 512
    .local v7, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1d

    .line 518
    .end local v7           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_27
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 520
    .local v5, config:Landroid/content/res/Configuration;
    const/4 v11, 0x0

    .line 521
    .local v11, resClassName:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "plug_in_class"

    const-string v20, "array"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 525
    if-eqz v11, :cond_84

    .line 526
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, classNames:[Ljava/lang/String;
    if-eqz v4, :cond_81

    array-length v0, v4

    move/from16 v18, v0

    if-lez v18, :cond_81

    const/16 v18, 0x0

    aget-object v18, v4, v18

    if-eqz v18, :cond_81

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_81

    const/16 v18, 0x0

    aget-object v18, v4, v18

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_87

    .line 533
    :cond_81
    const/16 v18, 0x0

    goto :goto_21

    .line 528
    .end local v4           #classNames:[Ljava/lang/String;
    :cond_84
    const/16 v18, 0x0

    goto :goto_21

    .line 536
    .restart local v4       #classNames:[Ljava/lang/String;
    :cond_87
    const/4 v14, 0x0

    .line 537
    .local v14, resPreview:I
    const/4 v15, 0x0

    .line 538
    .local v15, resWidth:I
    const/4 v12, 0x0

    .line 539
    .local v12, resHeight:I
    const/4 v13, 0x0

    .line 541
    .local v13, resName:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "preview"

    const-string v20, "drawable"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 543
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_width"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 545
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_height"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 547
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "plug_in_name"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 550
    if-eqz v13, :cond_243

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 552
    .local v16, title:Ljava/lang/String;
    :goto_f7
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 554
    .local v8, icon:Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x0

    aget-object v18, v4, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    .line 555
    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    .line 556
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    .line 557
    move-object/from16 v0, p2

    iput v14, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetPreview:I

    .line 559
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    .line 561
    .local v10, metrics:Landroid/util/DisplayMetrics;
    iget v6, v5, Landroid/content/res/Configuration;->orientation:I

    .line 562
    .local v6, curOrientation:I
    const/16 v17, 0x2

    .line 563
    .local v17, tmpOrientation:I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v6, v0, :cond_257

    .line 564
    if-eqz v15, :cond_24f

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_155
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 566
    if-eqz v12, :cond_253

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_17f
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 568
    const/16 v17, 0x1

    .line 576
    :goto_187
    move/from16 v0, v17

    iput v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 577
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 579
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_width"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 581
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_height"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 584
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2bb

    .line 585
    if-eqz v15, :cond_2b3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_1fa
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 587
    if-eqz v12, :cond_2b7

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_224
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 596
    :goto_22a
    iput v6, v5, Landroid/content/res/Configuration;->orientation:I

    .line 597
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 606
    const/16 v18, 0x1

    goto/16 :goto_21

    .line 550
    .end local v6           #curOrientation:I
    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #metrics:Landroid/util/DisplayMetrics;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #tmpOrientation:I
    :cond_243
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_f7

    .line 564
    .restart local v6       #curOrientation:I
    .restart local v8       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #metrics:Landroid/util/DisplayMetrics;
    .restart local v16       #title:Ljava/lang/String;
    .restart local v17       #tmpOrientation:I
    :cond_24f
    const/16 v18, 0x0

    goto/16 :goto_155

    .line 566
    :cond_253
    const/16 v18, 0x0

    goto/16 :goto_17f

    .line 570
    :cond_257
    if-eqz v15, :cond_2ad

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_27b
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 572
    if-eqz v12, :cond_2b0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_2a5
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_187

    .line 570
    :cond_2ad
    const/16 v18, 0x0

    goto :goto_27b

    .line 572
    :cond_2b0
    const/16 v18, 0x0

    goto :goto_2a5

    .line 585
    :cond_2b3
    const/16 v18, 0x0

    goto/16 :goto_1fa

    .line 587
    :cond_2b7
    const/16 v18, 0x0

    goto/16 :goto_224

    .line 590
    :cond_2bb
    if-eqz v15, :cond_311

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_2df
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 592
    if-eqz v12, :cond_314

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_309
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_22a

    .line 590
    :cond_311
    const/16 v18, 0x0

    goto :goto_2df

    .line 592
    :cond_314
    const/16 v18, 0x0

    goto :goto_309
.end method

.method private updateWidgetItemFromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z
    .registers 32
    .parameter "context"
    .parameter "item"
    .parameter "info"
    .parameter "key"

    .prologue
    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 612
    .local v13, manager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 614
    .local v3, c:Landroid/content/Context;
    :try_start_5
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1c} :catch_22

    move-result-object v3

    .line 620
    :goto_1d
    if-nez v3, :cond_27

    .line 621
    const/16 v24, 0x0

    .line 746
    :goto_21
    return v24

    .line 616
    :catch_22
    move-exception v10

    .line 617
    .local v10, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1d

    .line 622
    .end local v10           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_27
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 623
    .local v6, cr:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 625
    .local v5, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 626
    .local v15, parser:Landroid/content/res/XmlResourceParser;
    if-nez v15, :cond_48

    .line 627
    const/16 v24, 0x0

    goto :goto_21

    .line 632
    :cond_48
    :try_start_48
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_4b} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_1c9

    move-result v21

    .local v21, type:I
    const/16 v24, 0x2

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_5c

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_48

    .line 641
    .end local v21           #type:I
    :cond_5c
    :goto_5c
    :try_start_5c
    const-string v24, "plug_in_name"

    const-string v25, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 642
    .local v17, resName:I
    if-eqz v17, :cond_1cf

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 645
    .local v19, title:Ljava/lang/String;
    :goto_7e
    const/16 v24, 0x0

    const-string v25, "widgetId"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 648
    .local v22, widgetId:Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "description"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 649
    .local v8, description:I
    const/16 v24, 0x0

    const-string v25, "icon"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 652
    .local v12, icon:I
    const/16 v24, 0x0

    const-string v25, "themeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 655
    .local v18, themeName:Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "preview"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 656
    .local v16, preview:I
    const/16 v24, 0x0

    const-string v25, "width"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 657
    .local v23, width:I
    const/16 v24, 0x0

    const-string v25, "height"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 658
    .local v11, height:I
    const/16 v24, 0x0

    const-string v25, "class"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5c .. :try_end_f1} :catch_1ef

    move-result-object v4

    .line 661
    .local v4, className:Ljava/lang/String;
    const/4 v14, 0x0

    .line 663
    .local v14, order:Ljava/lang/String;
    const/16 v24, 0x0

    :try_start_f5
    const-string v25, "order"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fe} :catch_251
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f5 .. :try_end_fe} :catch_1ef

    move-result-object v14

    .line 680
    :goto_ff
    :try_start_ff
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    .line 681
    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;
    :try_end_109
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_ff .. :try_end_109} :catch_1ef

    .line 686
    :try_start_109
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_113} :catch_1db
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_109 .. :try_end_113} :catch_1ef

    .line 691
    :goto_113
    :try_start_113
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    .line 692
    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetPreview:I

    .line 695
    if-lez v8, :cond_125

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .end local v19           #title:Ljava/lang/String;
    :cond_125
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mDescription:Ljava/lang/String;

    .line 696
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;
    :try_end_131
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_113 .. :try_end_131} :catch_1ef

    .line 702
    :try_start_131
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I
    :try_end_13b
    .catch Ljava/lang/NumberFormatException; {:try_start_131 .. :try_end_13b} :catch_1fe
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_131 .. :try_end_13b} :catch_1ef

    .line 707
    :goto_13b
    :try_start_13b
    iget v7, v5, Landroid/content/res/Configuration;->orientation:I

    .line 708
    .local v7, curOrientation:I
    const/16 v20, 0x2

    .line 709
    .local v20, tmpOrientation:I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v7, v0, :cond_209

    .line 710
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 711
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 712
    const/16 v20, 0x1

    .line 718
    :goto_169
    move/from16 v0, v20

    iput v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 719
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 721
    const/16 v24, 0x2

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_22d

    .line 722
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 723
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 729
    :goto_1aa
    iput v7, v5, Landroid/content/res/Configuration;->orientation:I

    .line 730
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_1bf
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13b .. :try_end_1bf} :catch_1ef

    .line 746
    const/16 v24, 0x1

    goto/16 :goto_21

    .line 634
    .end local v4           #className:Ljava/lang/String;
    .end local v7           #curOrientation:I
    .end local v8           #description:I
    .end local v11           #height:I
    .end local v12           #icon:I
    .end local v14           #order:Ljava/lang/String;
    .end local v16           #preview:I
    .end local v17           #resName:I
    .end local v18           #themeName:Ljava/lang/String;
    .end local v20           #tmpOrientation:I
    .end local v22           #widgetId:Ljava/lang/String;
    .end local v23           #width:I
    :catch_1c3
    move-exception v9

    .line 635
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_5c

    .line 636
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1c9
    move-exception v9

    .line 637
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5c

    .line 642
    .end local v9           #e:Ljava/io/IOException;
    .restart local v17       #resName:I
    :cond_1cf
    :try_start_1cf
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_7e

    .line 687
    .restart local v4       #className:Ljava/lang/String;
    .restart local v8       #description:I
    .restart local v11       #height:I
    .restart local v12       #icon:I
    .restart local v14       #order:Ljava/lang/String;
    .restart local v16       #preview:I
    .restart local v18       #themeName:Ljava/lang/String;
    .restart local v19       #title:Ljava/lang/String;
    .restart local v22       #widgetId:Ljava/lang/String;
    .restart local v23       #width:I
    :catch_1db
    move-exception v9

    .line 688
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f02002f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1ed
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1cf .. :try_end_1ed} :catch_1ef

    goto/16 :goto_113

    .line 740
    .end local v4           #className:Ljava/lang/String;
    .end local v8           #description:I
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #height:I
    .end local v12           #icon:I
    .end local v14           #order:Ljava/lang/String;
    .end local v16           #preview:I
    .end local v17           #resName:I
    .end local v18           #themeName:Ljava/lang/String;
    .end local v19           #title:Ljava/lang/String;
    .end local v22           #widgetId:Ljava/lang/String;
    .end local v23           #width:I
    :catch_1ef
    move-exception v9

    .line 741
    .local v9, e:Landroid/content/res/Resources$NotFoundException;
    const-string v24, "Launcher.SWidgetPkgMgr"

    const-string v25, "Resource not found exception :"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v9}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 743
    const/16 v24, 0x0

    goto/16 :goto_21

    .line 703
    .end local v9           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v4       #className:Ljava/lang/String;
    .restart local v8       #description:I
    .restart local v11       #height:I
    .restart local v12       #icon:I
    .restart local v14       #order:Ljava/lang/String;
    .restart local v16       #preview:I
    .restart local v17       #resName:I
    .restart local v18       #themeName:Ljava/lang/String;
    .restart local v22       #widgetId:Ljava/lang/String;
    .restart local v23       #width:I
    :catch_1fe
    move-exception v9

    .line 704
    .local v9, e:Ljava/lang/NumberFormatException;
    const/16 v24, -0x1

    :try_start_201
    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mOrder:I

    goto/16 :goto_13b

    .line 714
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #curOrientation:I
    .restart local v20       #tmpOrientation:I
    :cond_209
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 715
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_169

    .line 725
    :cond_22d
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 726
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I
    :try_end_24f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_201 .. :try_end_24f} :catch_1ef

    goto/16 :goto_1aa

    .line 664
    .end local v7           #curOrientation:I
    .end local v20           #tmpOrientation:I
    .restart local v19       #title:Ljava/lang/String;
    :catch_251
    move-exception v24

    goto/16 :goto_ff
.end method


# virtual methods
.method declared-synchronized addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 185
    monitor-enter p0

    if-eqz p2, :cond_22

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_22

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 187
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_22

    .line 188
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 189
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_4c

    .line 204
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_22
    monitor-exit p0

    return-void

    .line 193
    .restart local v4       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_24
    :try_start_24
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 195
    .local v2, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v3

    .line 196
    .local v3, item:[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-eqz v3, :cond_28

    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3b
    array-length v5, v3

    if-ge v0, v5, :cond_28

    .line 198
    aget-object v5, v3, v0

    if-eqz v5, :cond_49

    .line 199
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_4c

    .line 197
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 185
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #item:[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_4c
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public allocWidgetId()J
    .registers 3

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, id:J
    return-wide v0
.end method

.method public createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .registers 5
    .parameter "context"
    .parameter "item"

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .registers 6
    .parameter "context"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;JLcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .registers 8
    .parameter "group"
    .parameter "info"

    .prologue
    .line 354
    iget-wide v0, p2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    .line 355
    .local v0, widgetId:J
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 356
    return-void
.end method

.method public findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .registers 8
    .parameter "packageName"
    .parameter "className"
    .parameter "themeName"

    .prologue
    .line 382
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 383
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_33

    .line 384
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 385
    .local v2, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 386
    if-eqz p3, :cond_2f

    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    if-eqz v3, :cond_2f

    .line 387
    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 394
    .end local v2           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_2f
    :goto_2f
    return-object v2

    .line 383
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 394
    .end local v2           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_33
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method public getWidgetItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initInstance(Landroid/app/ActivityGroup;)V
    .registers 4
    .parameter "group"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 109
    return-void
.end method

.method public isWidgetLoaded()Z
    .registers 2

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    return v0
.end method

.method public pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .registers 3
    .parameter "group"
    .parameter "info"

    .prologue
    .line 359
    invoke-virtual {p2, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->fireOnPause(Landroid/content/Context;)V

    .line 360
    return-void
.end method

.method declared-synchronized removePackage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 210
    monitor-enter p0

    if-eqz p2, :cond_47

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_47

    .line 211
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 213
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v5, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v1, :cond_2d

    .line 215
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 216
    .local v4, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v6, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 217
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 221
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_2d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_49

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v6, :cond_49

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 222
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 223
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_70

    .line 234
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    :cond_47
    monitor-exit p0

    return-void

    .line 227
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v5       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    .line 228
    .local v0, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 229
    .restart local v4       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbindCachedIconDrawable(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    .line 230
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_49 .. :try_end_6f} :catchall_70

    goto :goto_4f

    .line 210
    .end local v0           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .end local v5           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    :catchall_70
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .registers 3
    .parameter "group"
    .parameter "info"

    .prologue
    .line 363
    invoke-virtual {p2, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->fireOnResume(Landroid/content/Context;)V

    .line 364
    return-void
.end method

.method declared-synchronized scanPackage(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 142
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 146
    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;-><init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    .line 147
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    const-string v2, "SamsungWidgets Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_20

    .line 149
    monitor-exit p0

    return-void

    .line 142
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized start(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "localeChanged"

    .prologue
    .line 152
    monitor-enter p0

    if-nez p2, :cond_9

    :try_start_3
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v0, :cond_9

    .line 161
    :goto_7
    monitor-exit p0

    return-void

    .line 155
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 157
    if-eqz p2, :cond_13

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 160
    :cond_13
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 152
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unbind()V
    .registers 1

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 751
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbindCachedIconDrawables()V

    .line 752
    return-void
.end method

.method declared-synchronized updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 240
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_5b

    .line 265
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 244
    :cond_12
    if-eqz p2, :cond_10

    :try_start_14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_10

    .line 245
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    .local v0, count:I
    const/4 v5, 0x0

    .line 247
    .local v5, matchItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v0, :cond_35

    .line 248
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 249
    .local v4, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v7, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 250
    move-object v5, v4

    .line 255
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_35
    if-eqz v5, :cond_10

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 257
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_10

    .line 258
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 259
    .local v3, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1, v5, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z
    :try_end_54
    .catchall {:try_start_14 .. :try_end_54} :catchall_5b

    move-result v7

    if-eqz v7, :cond_45

    goto :goto_10

    .line 247
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 239
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .end local v5           #matchItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :catchall_5b
    move-exception v7

    monitor-exit p0

    throw v7
.end method

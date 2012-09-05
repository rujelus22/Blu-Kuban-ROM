.class public Lcom/sprint/w/installer/RssPackBrowser;
.super Landroid/app/Activity;
.source "RssPackBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/RssPackBrowser$ItemView;,
        Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;,
        Lcom/sprint/w/installer/RssPackBrowser$FeedItem;,
        Lcom/sprint/w/installer/RssPackBrowser$Channel;
    }
.end annotation


# static fields
.field public static final EXTRA_PASSWORD:Ljava/lang/String; = "password"

.field public static final EXTRA_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field mAdapter:Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;

.field private mChannel:Lcom/sprint/w/installer/RssPackBrowser$Channel;

.field mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mDescription:Landroid/widget/TextView;

.field private mFeedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/RssPackBrowser$FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mIconReady:Ljava/lang/Runnable;

.field private mInstalledPack:Lcom/sprint/w/installer/PackInfo;

.field mListView:Landroid/widget/ListView;

.field private mPassword:Ljava/lang/String;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSyncLock:Ljava/lang/Object;

.field private mTitle:Landroid/widget/TextView;

.field final mUpdateList:Ljava/lang/Runnable;

.field private mUrl:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const-class v0, Lcom/sprint/w/installer/RssPackBrowser;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->log:Lcom/sprint/id/logger/Logger;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mSyncLock:Ljava/lang/Object;

    .line 207
    new-instance v0, Lcom/sprint/w/installer/RssPackBrowser$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackBrowser$2;-><init>(Lcom/sprint/w/installer/RssPackBrowser;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 272
    new-instance v0, Lcom/sprint/w/installer/RssPackBrowser$4;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackBrowser$4;-><init>(Lcom/sprint/w/installer/RssPackBrowser;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mIconReady:Ljava/lang/Runnable;

    .line 278
    new-instance v0, Lcom/sprint/w/installer/RssPackBrowser$5;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackBrowser$5;-><init>(Lcom/sprint/w/installer/RssPackBrowser;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mUpdateList:Ljava/lang/Runnable;

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/RssPackBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sprint/w/installer/RssPackBrowser;->loadFeed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sprint/w/installer/RssPackBrowser;)Lcom/sprint/w/installer/PackInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sprint/w/installer/RssPackBrowser;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/RssPackBrowser;)Lcom/sprint/w/installer/RssPackBrowser$Channel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mChannel:Lcom/sprint/w/installer/RssPackBrowser$Channel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/RssPackBrowser;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/RssPackBrowser;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/RssPackBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sprint/w/installer/RssPackBrowser;->updateListView()V

    return-void
.end method

.method static synthetic access$600(Lcom/sprint/w/installer/RssPackBrowser;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mFeedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method private displayError()V
    .registers 2

    .prologue
    .line 220
    new-instance v0, Lcom/sprint/w/installer/RssPackBrowser$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackBrowser$3;-><init>(Lcom/sprint/w/installer/RssPackBrowser;)V

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method private loadContent()V
    .registers 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/sprint/w/installer/RssPackBrowser;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 86
    new-instance v0, Lcom/sprint/w/installer/RssPackBrowser$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackBrowser$1;-><init>(Lcom/sprint/w/installer/RssPackBrowser;)V

    .line 114
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method private loadFeed()V
    .registers 15

    .prologue
    .line 119
    :try_start_0
    iget-object v9, p0, Lcom/sprint/w/installer/RssPackBrowser;->mFeedItems:Ljava/util/ArrayList;

    .line 120
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/RssPackBrowser$FeedItem;>;"
    if-nez v9, :cond_39

    .line 121
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/RssPackBrowser$FeedItem;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/sprint/w/installer/RssPackBrowser;->mFeedItems:Ljava/util/ArrayList;

    .line 126
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/RssPackBrowser$FeedItem;>;"
    :goto_b
    iget-object v11, p0, Lcom/sprint/w/installer/RssPackBrowser;->mUrl:Ljava/lang/String;

    iget-object v12, p0, Lcom/sprint/w/installer/RssPackBrowser;->mUsername:Ljava/lang/String;

    iget-object v13, p0, Lcom/sprint/w/installer/RssPackBrowser;->mPassword:Ljava/lang/String;

    invoke-static {p0, v11, v12, v13}, Lcom/sprint/w/installer/util/HttpUtil;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 127
    .local v8, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 128
    .local v2, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 129
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 130
    .local v1, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 131
    .local v3, doc:Lorg/w3c/dom/Document;
    const-string v11, "channel"

    invoke-interface {v3, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 132
    .local v10, nl:Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-nez v11, :cond_49

    .line 133
    iget-object v11, p0, Lcom/sprint/w/installer/RssPackBrowser;->log:Lcom/sprint/id/logger/Logger;

    const-string v12, "Expected rss 2.0 \'channel\' tag"

    invoke-virtual {v11, v12}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 168
    .end local v1           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/RssPackBrowser$FeedItem;>;"
    .end local v10           #nl:Lorg/w3c/dom/NodeList;
    :cond_38
    :goto_38
    return-void

    .line 123
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/RssPackBrowser$FeedItem;>;"
    :cond_39
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_b

    .line 164
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/RssPackBrowser$FeedItem;>;"
    :catch_3d
    move-exception v4

    .line 165
    .local v4, e:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/sprint/w/installer/RssPackBrowser;->log:Lcom/sprint/id/logger/Logger;

    const-string v12, "Error opening feed"

    invoke-virtual {v11, v12, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    invoke-direct {p0}, Lcom/sprint/w/installer/RssPackBrowser;->displayError()V

    goto :goto_38

    .line 136
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v3       #doc:Lorg/w3c/dom/Document;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/RssPackBrowser$FeedItem;>;"
    .restart local v10       #nl:Lorg/w3c/dom/NodeList;
    :cond_49
    const/4 v11, 0x0

    :try_start_4a
    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 137
    .local v5, elem:Lorg/w3c/dom/Element;
    new-instance v0, Lcom/sprint/w/installer/RssPackBrowser$Channel;

    invoke-direct {v0}, Lcom/sprint/w/installer/RssPackBrowser$Channel;-><init>()V

    .line 138
    .local v0, ch:Lcom/sprint/w/installer/RssPackBrowser$Channel;
    const/4 v11, 0x0

    const-string v12, "title"

    invoke-static {v5, v11, v12}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/sprint/w/installer/RssPackBrowser$Channel;->title:Ljava/lang/String;

    .line 139
    const/4 v11, 0x0

    const-string v12, "description"

    invoke-static {v5, v11, v12}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/sprint/w/installer/RssPackBrowser$Channel;->description:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mChannel:Lcom/sprint/w/installer/RssPackBrowser$Channel;

    .line 141
    const-string v11, "item"

    invoke-interface {v5, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 143
    const/4 v7, 0x0

    .local v7, i:I
    :goto_70
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v7, v11, :cond_38

    .line 144
    new-instance v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    invoke-direct {v6}, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;-><init>()V

    .line 145
    .local v6, fi:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .end local v5           #elem:Lorg/w3c/dom/Element;
    check-cast v5, Lorg/w3c/dom/Element;

    .line 146
    .restart local v5       #elem:Lorg/w3c/dom/Element;
    const/4 v11, 0x0

    const-string v12, "title"

    invoke-static {v5, v11, v12}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->title:Ljava/lang/String;

    .line 147
    const/4 v11, 0x0

    const-string v12, "pubDate"

    invoke-static {v5, v11, v12}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->date:Ljava/lang/String;

    .line 148
    const/4 v11, 0x0

    const-string v12, "description"

    invoke-static {v5, v11, v12}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->description:Ljava/lang/String;

    .line 149
    const-string v11, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v12, "icon"

    const-string v13, "url"

    invoke-static {v5, v11, v12, v13}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->iconUrl:Ljava/lang/String;

    .line 150
    const-string v11, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v12, "id"

    invoke-static {v5, v11, v12}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->id:Ljava/lang/String;

    .line 151
    iget-object v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->id:Ljava/lang/String;

    if-nez v11, :cond_bf

    .line 152
    const/4 v11, 0x0

    const-string v12, "guid"

    invoke-static {v5, v11, v12}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->id:Ljava/lang/String;

    .line 154
    :cond_bf
    const/4 v11, 0x0

    const-string v12, "link"

    invoke-static {v5, v11, v12}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->link:Ljava/lang/String;

    .line 155
    const-string v11, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v12, "version"

    const-string v13, "name"

    invoke-static {v5, v11, v12, v13}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->version:Ljava/lang/String;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_d4} :catch_3d

    .line 157
    :try_start_d4
    const-string v11, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v12, "version"

    const-string v13, "code"

    invoke-static {v5, v11, v12, v13}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->versionCode:I
    :try_end_e4
    .catch Ljava/lang/NumberFormatException; {:try_start_d4 .. :try_end_e4} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_e4} :catch_3d

    .line 161
    :goto_e4
    const/4 v11, 0x0

    :try_start_e5
    const-string v12, "terms"

    invoke-static {v5, v11, v12}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->terms:Ljava/lang/String;

    .line 162
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_70

    .line 158
    :catch_f4
    move-exception v4

    .line 159
    .local v4, e:Ljava/lang/NumberFormatException;
    iget-object v11, p0, Lcom/sprint/w/installer/RssPackBrowser;->log:Lcom/sprint/id/logger/Logger;

    const-string v12, "version code is not a number"

    invoke-virtual {v11, v12}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_fc} :catch_3d

    goto :goto_e4
.end method

.method private updateListView()V
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_25

    .line 198
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mListView:Landroid/widget/ListView;

    .line 199
    new-instance v0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;-><init>(Lcom/sprint/w/installer/RssPackBrowser;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mAdapter:Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;

    .line 200
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/RssPackBrowser;->mAdapter:Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/RssPackBrowser;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 205
    :goto_24
    return-void

    .line 203
    :cond_25
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mAdapter:Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;

    invoke-virtual {v0}, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->notifyDataSetChanged()V

    goto :goto_24
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackBrowser;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/sprint/w/installer/RssPackBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mUrl:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 64
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Data url expected"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/sprint/w/installer/RssPackBrowser;->finish()V

    .line 76
    :goto_21
    return-void

    .line 68
    :cond_22
    invoke-virtual {p0}, Lcom/sprint/w/installer/RssPackBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mUsername:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/sprint/w/installer/RssPackBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mPassword:Ljava/lang/String;

    .line 70
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mTitle:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mDescription:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lcom/sprint/w/installer/RssPackBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 74
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mProgress:Landroid/widget/ProgressBar;

    .line 75
    invoke-direct {p0}, Lcom/sprint/w/installer/RssPackBrowser;->loadContent()V

    goto :goto_21
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    .line 82
    return-void
.end method

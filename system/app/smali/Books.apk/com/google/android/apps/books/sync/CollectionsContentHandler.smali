.class public Lcom/google/android/apps/books/sync/CollectionsContentHandler;
.super Lcom/google/android/feeds/xml/net/XmlContentHandler;
.source "CollectionsContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/feeds/xml/net/XmlContentHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/ContentValues;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ATOM_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/Atom"


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mRoot:Landroid/sax/RootElement;

.field private mValues:Landroid/content/ContentValues;

.field private final mValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/feeds/xml/net/XmlContentHandler;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mAccount:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValuesList:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->createRoot()Landroid/sax/RootElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mRoot:Landroid/sax/RootElement;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValuesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$300(Ljava/lang/String;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->extractCollectionId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method private associateText(Landroid/sax/Element;Ljava/lang/String;)V
    .registers 4
    .parameter "element"
    .parameter "valueName"

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/books/sync/CollectionsContentHandler$2;-><init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Ljava/lang/String;)V

    .line 75
    .local v0, listener:Landroid/sax/EndTextElementListener;
    invoke-virtual {p1, v0}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 76
    return-void
.end method

.method private createRoot()Landroid/sax/RootElement;
    .registers 5

    .prologue
    .line 49
    new-instance v1, Landroid/sax/RootElement;

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "feed"

    invoke-direct {v1, v2, v3}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v1, root:Landroid/sax/RootElement;
    new-instance v2, Lcom/google/android/apps/books/sync/CollectionsContentHandler$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler$1;-><init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)V

    invoke-virtual {v1, v2}, Landroid/sax/RootElement;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 56
    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "entry"

    invoke-virtual {v1, v2, v3}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 57
    .local v0, entry:Landroid/sax/Element;
    new-instance v2, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;-><init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Lcom/google/android/apps/books/sync/CollectionsContentHandler$1;)V

    invoke-virtual {v0, v2}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 59
    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    const-string v3, "collection_id"

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->urlColumn(Landroid/sax/Element;Ljava/lang/String;)V

    .line 60
    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "title"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    const-string v3, "title"

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->associateText(Landroid/sax/Element;Ljava/lang/String;)V

    .line 61
    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "summary"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    const-string v3, "summary"

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->associateText(Landroid/sax/Element;Ljava/lang/String;)V

    .line 62
    return-object v1
.end method

.method private static extractCollectionId(Ljava/lang/String;)J
    .registers 5
    .parameter "url"

    .prologue
    .line 102
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, collectionId:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private urlColumn(Landroid/sax/Element;Ljava/lang/String;)V
    .registers 4
    .parameter "element"
    .parameter "valueName"

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/books/sync/CollectionsContentHandler$3;-><init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Ljava/lang/String;)V

    .line 88
    .local v0, listener:Landroid/sax/EndTextElementListener;
    invoke-virtual {p1, v0}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected bridge synthetic getContent()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->getContent()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getContent()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValuesList:Ljava/util/List;

    return-object v0
.end method

.method protected getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mRoot:Landroid/sax/RootElement;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/android/apps/books/net/VolumesContentHandler;
.super Lcom/google/android/feeds/xml/net/XmlContentHandler;
.source "VolumesContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;,
        Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;,
        Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/feeds/xml/net/XmlContentHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/net/KeyValueHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mPriceType:Ljava/lang/String;

.field private final mRoot:Landroid/sax/RootElement;

.field private final mTime:Landroid/text/format/Time;


# direct methods
.method static synthetic access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/net/VolumesContentHandler;Lorg/xml/sax/Attributes;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->handleEtag(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/net/VolumesContentHandler;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/net/VolumesContentHandler;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mPriceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mPriceType:Ljava/lang/String;

    return-object p1
.end method

.method private handleEtag(Lorg/xml/sax/Attributes;)V
    .registers 5
    .parameter "attributes"

    .prologue
    .line 329
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "etag"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, etag:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 331
    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    const-string v2, "version"

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_11
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    invoke-interface {v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 362
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mRoot:Landroid/sax/RootElement;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    return-object v0
.end method

.method handleLink(Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "attributes"

    .prologue
    .line 348
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    const-string v2, "rel"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, rel:Ljava/lang/String;
    const-string v2, "href"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, href:Ljava/lang/String;
    const-string v2, "http://schemas.google.com/books/2008/thumbnail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 353
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "zoom"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "edge"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "l"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "w"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "h"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/apps/books/util/UriUtils;->dropQueryParam(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    const-string v3, "cover_url"

    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_3b
    :goto_3b
    return-void

    .line 355
    :cond_3c
    const-string v2, "http://schemas.google.com/books/2008/buylink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 356
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    const-string v3, "buy_url"

    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.class Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ItemContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributesResolver"
.end annotation


# instance fields
.field private final mAttributeName:Ljava/lang/String;

.field private final mAttributeValue:Ljava/lang/String;

.field private mAttributes:Lorg/xml/sax/Attributes;

.field private final mTagName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "tagName"
    .parameter "attributeName"
    .parameter "attributeValue"

    .prologue
    .line 536
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 537
    if-nez p1, :cond_d

    .line 538
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tag name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_d
    if-nez p2, :cond_17

    .line 541
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attribute name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_17
    if-nez p3, :cond_21

    .line 544
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attribute value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;->mTagName:Ljava/lang/String;

    .line 547
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;->mAttributeName:Ljava/lang/String;

    .line 548
    iput-object p3, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;->mAttributeValue:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public static findAttributes(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/Attributes;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    :try_start_0
    new-instance v0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;->parse(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 499
    iget-object v0, v0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;->mAttributes:Lorg/xml/sax/Attributes;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 501
    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static parse(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 519
    const-string v0, "org.ccil.cowan.tagsoup.Parser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 520
    const-string v1, "parse"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lorg/xml/sax/InputSource;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 521
    const-string v2, "setContentHandler"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lorg/xml/sax/ContentHandler;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 523
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 524
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"

    .prologue
    .line 553
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 554
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;->mAttributeName:Ljava/lang/String;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;->mAttributeValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 556
    iput-object p4, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AttributesResolver;->mAttributes:Lorg/xml/sax/Attributes;

    .line 559
    .end local v0           #value:Ljava/lang/String;
    :cond_18
    return-void
.end method

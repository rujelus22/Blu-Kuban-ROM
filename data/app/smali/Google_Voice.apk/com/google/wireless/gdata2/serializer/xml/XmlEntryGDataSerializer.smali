.class public Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;
.super Ljava/lang/Object;
.source "XmlEntryGDataSerializer.java"

# interfaces
.implements Lcom/google/wireless/gdata2/serializer/GDataSerializer;


# instance fields
.field private final entry:Lcom/google/wireless/gdata2/data/Entry;

.field private final factory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

.field private final supportsPartial:Z


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 4
    .parameter "factory"
    .parameter "entry"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->factory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    .line 41
    iput-object p2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 42
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getFields()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->supportsPartial:Z

    .line 43
    return-void

    .line 42
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private declareEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 114
    return-void
.end method

.method private static serializeAuthor(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "serializer"
    .parameter "author"
    .parameter "email"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 263
    :cond_d
    :goto_d
    return-void

    .line 255
    :cond_e
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method private serializeBatchInfo(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 310
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    :cond_19
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchOperation(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 314
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v2}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchOperation(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    :cond_3f
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchId(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 320
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->getBatchId(Lcom/google/wireless/gdata2/data/Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    :cond_62
    return-void
.end method

.method private static serializeCategory(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "serializer"
    .parameter "category"
    .parameter "categoryScheme"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 281
    :goto_d
    return-void

    .line 273
    :cond_e
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 275
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    :cond_1e
    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 278
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    :cond_29
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method private static serializeContent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 5
    .parameter "serializer"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 239
    if-nez p1, :cond_4

    .line 246
    :goto_3
    return-void

    .line 242
    :cond_4
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXT:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3
.end method

.method private serializeEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 128
    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 129
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeBatchInfo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 132
    :cond_8
    if-eq p2, v3, :cond_13

    .line 133
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeId(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 136
    :cond_13
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeTitle(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 138
    if-eq p2, v3, :cond_36

    .line 139
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EDIT_REL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v4, v4}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ALTERNATE_REL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getHtmlUri()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXTHTML:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v4}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_36
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeSummary(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeContent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeAuthor(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getCategory()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/Entry;->getCategoryScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeCategory(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-nez p2, :cond_71

    .line 154
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializePublicationDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 158
    :cond_71
    if-eq p2, v3, :cond_7c

    .line 159
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeUpdateDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 163
    :cond_7c
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 164
    return-void
.end method

.method private static serializeId(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter "serializer"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    :goto_7
    return-void

    .line 185
    :cond_8
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method protected static serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "serializer"
    .parameter "rel"
    .parameter "href"
    .parameter "type"
    .parameter "etag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-static {p2}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    :goto_7
    return-void

    .line 217
    :cond_8
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    invoke-static {p3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    :cond_22
    invoke-static {p4}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    :cond_2d
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method private static serializePublicationDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter "serializer"
    .parameter "publicationDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 293
    :goto_7
    return-void

    .line 290
    :cond_8
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method private static serializeSummary(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter "serializer"
    .parameter "summary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    :goto_7
    return-void

    .line 231
    :cond_8
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method private static serializeTitle(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter "serializer"
    .parameter "title"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    :goto_7
    return-void

    .line 196
    :cond_8
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method private static serializeUpdateDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter "serializer"
    .parameter "updateDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 305
    :goto_7
    return-void

    .line 302
    :cond_8
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const-string v0, "application/atom+xml"

    return-object v0
.end method

.method protected getEntry()Lcom/google/wireless/gdata2/data/Entry;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    return-object v0
.end method

.method public getSupportsPartial()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->supportsPartial:Z

    return v0
.end method

.method public serialize(Ljava/io/OutputStream;I)V
    .registers 9
    .parameter "out"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_2
    iget-object v3, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->factory:Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;

    invoke-interface {v3}, Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_7} :catch_59

    move-result-object v2

    .line 82
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UTF8:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 83
    if-eq p2, v5, :cond_19

    .line 84
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UTF8:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 85
    invoke-direct {p0, v2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->declareEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 87
    :cond_19
    iget-object v3, p0, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->entry:Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v3}, Lcom/google/wireless/gdata2/data/Entry;->getFields()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, fields:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->getSupportsPartial()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 89
    const-string v3, "http://schemas.google.com/g/2005"

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    :cond_32
    const-string v3, "http://www.w3.org/2005/Atom"

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    invoke-direct {p0, v2, p2}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->serializeEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 97
    const-string v3, "http://www.w3.org/2005/Atom"

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/serializer/xml/XmlEntryGDataSerializer;->getSupportsPartial()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 100
    const-string v3, "http://schemas.google.com/g/2005"

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    :cond_50
    if-eq p2, v5, :cond_55

    .line 104
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 106
    :cond_55
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 107
    return-void

    .line 77
    .end local v1           #fields:Ljava/lang/String;
    :catch_59
    move-exception v0

    .line 78
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v4, "Unable to create XmlSerializer."

    invoke-direct {v3, v4, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 3
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    return-void
.end method

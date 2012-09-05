.class public Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.super Ljava/lang/Object;
.source "XmlGDataParser.java"

# interfaces
.implements Lcom/google/wireless/gdata/parser/GDataParser;


# static fields
.field public static final NAMESPACE_ATOM_URI:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field public static final NAMESPACE_GD:Ljava/lang/String; = "gd"

.field public static final NAMESPACE_GD_URI:Ljava/lang/String; = "http://schemas.google.com/g/2005"

.field public static final NAMESPACE_OPENSEARCH:Ljava/lang/String; = "openSearch"

.field public static final NAMESPACE_OPENSEARCH_URI:Ljava/lang/String; = "http://a9.com/-/spec/opensearchrss/1.0/"


# instance fields
.field private final is:Ljava/io/InputStream;

.field private isInBadState:Z

.field private final parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    .line 53
    iput-object p2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    .line 55
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_14

    .line 57
    :try_start_e
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_14} :catch_15

    .line 62
    :cond_14
    return-void

    .line 58
    :catch_15
    move-exception v0

    .line 59
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not create XmlGDataParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleAuthor(Lcom/google/wireless/gdata/data/Entry;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 457
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    const-string v0, "author"

    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 460
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <author>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_41
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 466
    :goto_47
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8c

    .line 467
    packed-switch v0, :pswitch_data_8e

    .line 487
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_47

    .line 469
    :pswitch_54
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 470
    const-string v1, "name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 471
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setAuthor(Ljava/lang/String;)V

    goto :goto_4d

    .line 473
    :cond_6c
    const-string v1, "email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 474
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setEmail(Ljava/lang/String;)V

    goto :goto_4d

    .line 479
    :pswitch_7e
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string v1, "author"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 489
    :cond_8c
    return-void

    .line 467
    nop

    :pswitch_data_8e
    .packed-switch 0x2
        :pswitch_54
        :pswitch_7e
    .end packed-switch
.end method

.method private final parseFeed()Lcom/google/wireless/gdata/data/Feed;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createFeed()Lcom/google/wireless/gdata/data/Feed;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 158
    :goto_c
    const/4 v2, 0x1

    if-eq v1, v2, :cond_cc

    .line 159
    packed-switch v1, :pswitch_data_d2

    .line 199
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_c

    .line 161
    :pswitch_19
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "totalResults"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 163
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setTotalResults(I)V

    goto :goto_12

    .line 165
    :cond_35
    const-string v2, "startIndex"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 166
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setStartIndex(I)V

    goto :goto_12

    .line 168
    :cond_4b
    const-string v2, "itemsPerPage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 169
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setItemsPerPage(I)V

    goto :goto_12

    .line 171
    :cond_61
    const-string v2, "title"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 172
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setTitle(Ljava/lang/String;)V

    goto :goto_12

    .line 173
    :cond_73
    const-string v2, "id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 174
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setId(Ljava/lang/String;)V

    goto :goto_12

    .line 175
    :cond_85
    const-string v2, "updated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 176
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setLastUpdated(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 177
    :cond_98
    const-string v2, "category"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 178
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "term"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 181
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setCategory(Ljava/lang/String;)V

    .line 183
    :cond_b1
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "scheme"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 186
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 188
    :cond_c4
    const-string v2, "entry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 202
    :cond_cc
    return-object v0

    .line 193
    :cond_cd
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V

    goto/16 :goto_12

    .line 159
    :pswitch_data_d2
    .packed-switch 0x2
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 498
    :try_start_4
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 503
    :cond_9
    :goto_9
    return-void

    .line 499
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 2

    .prologue
    .line 141
    new-instance v0, Lcom/google/wireless/gdata/data/Entry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .registers 2

    .prologue
    .line 132
    new-instance v0, Lcom/google/wireless/gdata/data/Feed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/data/Feed;-><init>()V

    return-object v0
.end method

.method protected final getParser()Lorg/xmlpull/v1/XmlPullParser;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 385
    :goto_8
    if-eq v0, v5, :cond_22

    .line 386
    packed-switch v0, :pswitch_data_126

    .line 447
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_8

    .line 389
    :pswitch_14
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v1, "entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 449
    :cond_22
    return-void

    .line 393
    :cond_23
    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 394
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    goto :goto_d

    .line 395
    :cond_35
    const-string v1, "title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 396
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setTitle(Ljava/lang/String;)V

    goto :goto_d

    .line 397
    :cond_47
    const-string v1, "link"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 398
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "rel"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "type"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "href"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    const-string v3, "edit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 405
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata/data/Entry;->setEditUri(Ljava/lang/String;)V

    goto :goto_d

    .line 406
    :cond_73
    const-string v3, "alternate"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    const-string v3, "text/html"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 407
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata/data/Entry;->setHtmlUri(Ljava/lang/String;)V

    goto :goto_d

    .line 409
    :cond_87
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V

    goto :goto_d

    .line 414
    :cond_8b
    const-string v1, "summary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 415
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 416
    :cond_9e
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 418
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setContent(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 419
    :cond_b1
    const-string v1, "author"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 420
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleAuthor(Lcom/google/wireless/gdata/data/Entry;)V

    goto/16 :goto_d

    .line 421
    :cond_be
    const-string v1, "category"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 422
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "term"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_d9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d9

    .line 425
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setCategory(Ljava/lang/String;)V

    .line 427
    :cond_d9
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "scheme"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 430
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/data/Entry;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 432
    :cond_ee
    const-string v1, "published"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 433
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setPublicationDate(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 435
    :cond_101
    const-string v1, "updated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 436
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setUpdateDate(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 437
    :cond_114
    const-string v1, "deleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 438
    invoke-virtual {p1, v5}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    goto/16 :goto_d

    .line 440
    :cond_121
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V

    goto/16 :goto_d

    .line 386
    :pswitch_data_126
    .packed-switch 0x2
        :pswitch_14
    .end packed-switch
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 513
    return-void
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    return-void
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    return-void
.end method

.method public hasMoreData()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    iget-boolean v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    if-eqz v0, :cond_8

    move v0, v1

    .line 227
    :goto_7
    return v0

    .line 224
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_d} :catch_14

    move-result v0

    .line 225
    if-eq v0, v2, :cond_12

    move v0, v2

    goto :goto_7

    :cond_12
    move v0, v1

    goto :goto_7

    .line 226
    :catch_14
    move-exception v0

    move v0, v1

    .line 227
    goto :goto_7
.end method

.method public final init()Lcom/google/wireless/gdata/data/Feed;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_10

    move-result v0

    .line 75
    if-eqz v0, :cond_19

    .line 76
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :catch_10
    move-exception v0

    .line 73
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not parse GData feed."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_1e} :catch_2c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_35

    move-result v0

    .line 87
    :goto_1f
    const/4 v1, 0x1

    if-eq v0, v1, :cond_75

    .line 88
    packed-switch v0, :pswitch_data_7e

    .line 109
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_2a} :catch_63
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_6c

    move-result v0

    goto :goto_1f

    .line 82
    :catch_2c
    move-exception v0

    .line 83
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :catch_35
    move-exception v0

    .line 85
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :pswitch_3e
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "feed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 93
    :try_start_4c
    invoke-direct {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata/data/Feed;
    :try_end_4f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_4f} :catch_51
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5a

    move-result-object v0

    return-object v0

    .line 94
    :catch_51
    move-exception v0

    .line 95
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 97
    :catch_5a
    move-exception v0

    .line 98
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :catch_63
    move-exception v0

    .line 111
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :catch_6c
    move-exception v0

    .line 113
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :cond_75
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "No <feed> found in document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    nop

    :pswitch_data_7e
    .packed-switch 0x2
        :pswitch_3e
    .end packed-switch
.end method

.method public parseStandaloneEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    .line 302
    :try_start_4
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_9} :catch_14

    move-result v1

    .line 306
    if-eqz v1, :cond_1d

    .line 307
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :catch_14
    move-exception v0

    .line 304
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not parse GData entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 312
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_22} :catch_30
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_39

    move-result v1

    .line 318
    :goto_23
    const/4 v2, 0x1

    if-eq v1, v2, :cond_74

    .line 319
    packed-switch v1, :pswitch_data_7c

    .line 342
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_2e} :catch_6b

    move-result v1

    goto :goto_23

    .line 313
    :catch_30
    move-exception v0

    .line 314
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 315
    :catch_39
    move-exception v0

    .line 316
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 321
    :pswitch_42
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 322
    const-string v2, "entry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 324
    :try_start_50
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 325
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    :try_end_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_58} :catch_59
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_58} :catch_62

    .line 326
    return-object v0

    .line 327
    :catch_59
    move-exception v0

    .line 328
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 330
    :catch_62
    move-exception v0

    .line 331
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 343
    :catch_6b
    move-exception v0

    .line 344
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 347
    :cond_74
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "No <entry> found in document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_42
    .end packed-switch
.end method

.method public readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v0

    if-nez v0, :cond_f

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_14} :catch_35

    move-result v0

    .line 247
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    .line 248
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected event START_TAG: Actual event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :catch_35
    move-exception v0

    .line 244
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not parse entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 252
    :cond_3e
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 254
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected <entry>: Actual element: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_6b
    if-nez p1, :cond_7d

    .line 259
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    .line 265
    :goto_71
    :try_start_71
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 266
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V

    .line 267
    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->validate()V
    :try_end_7c
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_71 .. :try_end_7c} :catch_82
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_7c} :catch_a9

    .line 287
    return-object v0

    .line 261
    :cond_7d
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    move-object v0, p1

    goto :goto_71

    .line 268
    :catch_82
    move-exception v1

    .line 270
    :try_start_83
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_8c} :catch_a5

    .line 276
    :cond_8c
    :goto_8c
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse <entry>, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 271
    :catch_a5
    move-exception v2

    .line 274
    iput-boolean v3, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_8c

    .line 277
    :catch_a9
    move-exception v1

    .line 279
    :try_start_aa
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_b3} :catch_cc

    .line 285
    :cond_b3
    :goto_b3
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse <entry>, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 280
    :catch_cc
    move-exception v2

    .line 283
    iput-boolean v3, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_b3
.end method

.method protected skipToNextEntry()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v0

    if-nez v0, :cond_e

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_e
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 362
    :goto_14
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    .line 363
    packed-switch v0, :pswitch_data_30

    .line 370
    :cond_1a
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_14

    .line 365
    :pswitch_21
    const-string v0, "entry"

    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 372
    :cond_2f
    return-void

    .line 363
    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_21
    .end packed-switch
.end method

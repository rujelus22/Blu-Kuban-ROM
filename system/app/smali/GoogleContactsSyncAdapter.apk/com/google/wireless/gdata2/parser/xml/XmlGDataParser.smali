.class public Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.super Ljava/lang/Object;
.source "XmlGDataParser.java"

# interfaces
.implements Lcom/google/wireless/gdata2/parser/GDataParser;


# instance fields
.field private fields:Ljava/lang/String;

.field private final is:Ljava/io/InputStream;

.field private isInBadState:Z

.field private final parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    .line 68
    iput-object p2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 70
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A XmlGDataParser needs to be constructed with a namespace aware XmlPullParser"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    .line 77
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_24

    .line 79
    :try_start_1e
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_24} :catch_25

    .line 84
    :cond_24
    return-void

    .line 80
    :catch_25
    move-exception v0

    .line 81
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not create XmlGDataParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "parser"
    .parameter "name"

    .prologue
    .line 711
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 3
    .parameter "parser"
    .parameter "name"

    .prologue
    .line 715
    invoke-static {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private handleAuthor(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 9
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 645
    .local v2, eventType:I
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1d

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 650
    :cond_1d
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected <author>: Actual element: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 655
    :cond_42
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 656
    :goto_48
    const/4 v4, 0x1

    if-eq v2, v4, :cond_8d

    .line 657
    packed-switch v2, :pswitch_data_8e

    .line 677
    :cond_4e
    :goto_4e
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_48

    .line 659
    :pswitch_55
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 660
    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 661
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v4}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, authorName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setAuthor(Ljava/lang/String;)V

    goto :goto_4e

    .line 663
    .end local v0           #authorName:Ljava/lang/String;
    :cond_6d
    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 664
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v4}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, email:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/Entry;->setEmail(Ljava/lang/String;)V

    goto :goto_4e

    .line 669
    .end local v1           #email:Ljava/lang/String;
    :pswitch_7f
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 670
    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 679
    :cond_8d
    return-void

    .line 657
    :pswitch_data_8e
    .packed-switch 0x2
        :pswitch_55
        :pswitch_7f
    .end packed-switch
.end method

.method private handleBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 8
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, name:Ljava/lang/String;
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->STATUS:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 685
    new-instance v2, Lcom/google/wireless/gdata2/data/batch/BatchStatus;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;-><init>()V

    .line 686
    .local v2, status:Lcom/google/wireless/gdata2/data/batch/BatchStatus;
    invoke-static {p1, v2}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchStatus(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/batch/BatchStatus;)V

    .line 687
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setStatusCode(I)V

    .line 688
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REASON:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setReason(Ljava/lang/String;)V

    .line 689
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setContentType(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipSubTree()V

    .line 708
    .end local v2           #status:Lcom/google/wireless/gdata2/data/batch/BatchStatus;
    :goto_3a
    return-void

    .line 692
    :cond_3b
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 693
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchId(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V

    goto :goto_3a

    .line 694
    :cond_4d
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 695
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchOperation(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V

    goto :goto_3a

    .line 696
    :cond_61
    const-string v3, "interrupted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 697
    new-instance v0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;-><init>()V

    .line 698
    .local v0, interrupted:Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchInterrupted(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;)V

    .line 699
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REASON:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setReason(Ljava/lang/String;)V

    .line 700
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ERROR:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setErrorCount(I)V

    .line 701
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUCCESS:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setSuccessCount(I)V

    .line 702
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARSED:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setTotalCount(I)V

    .line 704
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipSubTree()V

    goto :goto_3a

    .line 706
    .end local v0           #interrupted:Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;
    :cond_a1
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected batch element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final parseFeed()Lcom/google/wireless/gdata2/data/Feed;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v3

    .line 224
    .local v3, feed:Lcom/google/wireless/gdata2/data/Feed;
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "http://schemas.google.com/g/2005"

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setETag(Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 227
    .local v2, eventType:I
    :goto_19
    const/4 v6, 0x1

    if-eq v2, v6, :cond_f8

    .line 228
    packed-switch v2, :pswitch_data_fe

    .line 274
    :cond_1f
    :goto_1f
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_19

    .line 230
    :pswitch_26
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, namespace:Ljava/lang/String;
    const-string v6, "http://a9.com/-/spec/opensearchrss/1.0/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_42

    const-string v6, "http://a9.com/-/spec/opensearch/1.1/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 236
    :cond_42
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TOTAL_RESULTS:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 237
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setTotalResults(I)V

    goto :goto_1f

    .line 239
    :cond_58
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->START_INDEX:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 240
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setStartIndex(I)V

    goto :goto_1f

    .line 242
    :cond_6e
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ITEMS_PER_PAGE:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 243
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setItemsPerPage(I)V

    goto :goto_1f

    .line 246
    :cond_84
    const-string v6, "http://www.w3.org/2005/Atom"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f9

    .line 247
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 248
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setTitle(Ljava/lang/String;)V

    goto :goto_1f

    .line 249
    :cond_9e
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 250
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setId(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 251
    :cond_b1
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 252
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setLastUpdated(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 253
    :cond_c4
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 254
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {v6, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, category:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_dd

    .line 257
    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata2/data/Feed;->setCategory(Ljava/lang/String;)V

    .line 259
    :cond_dd
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {v6, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, categoryScheme:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 262
    invoke-virtual {v3, v1}, Lcom/google/wireless/gdata2/data/Feed;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 264
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #categoryScheme:Ljava/lang/String;
    :cond_f0
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 277
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #namespace:Ljava/lang/String;
    :cond_f8
    return-object v3

    .line 269
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #namespace:Ljava/lang/String;
    :cond_f9
    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraElementInFeed(Lcom/google/wireless/gdata2/data/Feed;)V

    goto/16 :goto_1f

    .line 228
    :pswitch_data_fe
    .packed-switch 0x2
        :pswitch_26
    .end packed-switch
.end method

.method private final parsePartialFeed()Lcom/google/wireless/gdata2/data/Feed;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 189
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 190
    .local v0, eventType:I
    :goto_11
    const/4 v4, 0x1

    if-eq v0, v4, :cond_3e

    .line 191
    packed-switch v0, :pswitch_data_40

    .line 204
    :cond_17
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_11

    .line 193
    :pswitch_1e
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, namespace:Ljava/lang/String;
    const-string v4, "http://www.w3.org/2005/Atom"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 197
    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 198
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v3

    .line 207
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #namespace:Ljava/lang/String;
    :cond_3e
    return-object v3

    .line 191
    nop

    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 725
    :try_start_4
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 730
    :cond_9
    :goto_9
    return-void

    .line 726
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .registers 2

    .prologue
    .line 172
    new-instance v0, Lcom/google/wireless/gdata2/data/Entry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .registers 2

    .prologue
    .line 163
    new-instance v0, Lcom/google/wireless/gdata2/data/Feed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/Feed;-><init>()V

    return-object v0
.end method

.method protected final getParser()Lorg/xmlpull/v1/XmlPullParser;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method protected handleDefaultEntryElements(Lcom/google/wireless/gdata2/data/Entry;)Z
    .registers 3
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 14
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 550
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 551
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected <entry>: Actual element: <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 556
    :cond_35
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "http://schemas.google.com/g/2005"

    sget-object v9, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setETag(Ljava/lang/String;)V

    .line 557
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setFields(Ljava/lang/String;)V

    .line 559
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 561
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 562
    .local v2, eventType:I
    :goto_52
    if-eq v2, v11, :cond_1a0

    .line 563
    packed-switch v2, :pswitch_data_1a6

    .line 636
    :cond_57
    :goto_57
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_52

    .line 565
    :pswitch_5e
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 566
    .local v4, name:Ljava/lang/String;
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 639
    .end local v4           #name:Ljava/lang/String;
    :goto_6c
    return-void

    .line 572
    .restart local v4       #name:Ljava/lang/String;
    :cond_6d
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleDefaultEntryElements(Lcom/google/wireless/gdata2/data/Entry;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 576
    const-string v7, "http://schemas.google.com/gdata/batch"

    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 579
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)V

    goto :goto_57

    .line 580
    :cond_85
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 581
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setId(Ljava/lang/String;)V

    goto :goto_57

    .line 582
    :cond_97
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 583
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setTitle(Ljava/lang/String;)V

    goto :goto_57

    .line 584
    :cond_a9
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ef

    .line 585
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, rel:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 589
    .local v6, type:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, href:Ljava/lang/String;
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EDIT_REL:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 592
    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata2/data/Entry;->setEditUri(Ljava/lang/String;)V

    goto :goto_57

    .line 593
    :cond_d5
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ALTERNATE_REL:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ea

    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXTHTML:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ea

    .line 595
    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata2/data/Entry;->setHtmlUri(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 597
    :cond_ea
    invoke-virtual {p0, v5, v6, v3, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_57

    .line 602
    .end local v3           #href:Ljava/lang/String;
    .end local v5           #rel:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    :cond_ef
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_102

    .line 603
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 604
    :cond_102
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12b

    .line 605
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setContentType(Ljava/lang/String;)V

    .line 606
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SRC:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setContentSource(Ljava/lang/String;)V

    .line 607
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setContent(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 608
    :cond_12b
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_138

    .line 609
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleAuthor(Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_57

    .line 610
    :cond_138
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_168

    .line 611
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, category:Ljava/lang/String;
    if-eqz v0, :cond_153

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_153

    .line 614
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setCategory(Ljava/lang/String;)V

    .line 616
    :cond_153
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, categoryScheme:Ljava/lang/String;
    if-eqz v1, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_57

    .line 619
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/Entry;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 621
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #categoryScheme:Ljava/lang/String;
    :cond_168
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17b

    .line 622
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setPublicationDate(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 624
    :cond_17b
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18e

    .line 625
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setUpdateDate(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 626
    :cond_18e
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->DELETED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19b

    .line 627
    invoke-virtual {p1, v11}, Lcom/google/wireless/gdata2/data/Entry;->setDeleted(Z)V

    goto/16 :goto_57

    .line 629
    :cond_19b
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_57

    .line 638
    .end local v4           #name:Ljava/lang/String;
    :cond_1a0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->validate()V

    goto/16 :goto_6c

    .line 563
    nop

    :pswitch_data_1a6
    .packed-switch 0x2
        :pswitch_5e
    .end packed-switch
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 2
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 743
    return-void
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata2/data/Feed;)V
    .registers 2
    .parameter "feed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    return-void
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 5
    .parameter "rel"
    .parameter "type"
    .parameter "href"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    return-void
.end method

.method protected handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 7
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 510
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 511
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected <partial>: Actual element: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 516
    :cond_33
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 518
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 520
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 521
    .local v0, eventType:I
    :goto_49
    const/4 v2, 0x1

    if-eq v0, v2, :cond_67

    .line 522
    packed-switch v0, :pswitch_data_68

    .line 532
    :cond_4f
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_49

    .line 524
    :pswitch_56
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, name:Ljava/lang/String;
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 526
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V

    .line 534
    .end local v1           #name:Ljava/lang/String;
    :cond_67
    return-void

    .line 522
    :pswitch_data_68
    .packed-switch 0x2
        :pswitch_56
    .end packed-switch
.end method

.method public hasMoreData()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 297
    iget-boolean v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    if-eqz v4, :cond_7

    .line 304
    :goto_6
    return v3

    .line 301
    :cond_7
    :try_start_7
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_c} :catch_13

    move-result v0

    .line 302
    .local v0, eventType:I
    if-eq v0, v2, :cond_11

    :goto_f
    move v3, v2

    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_f

    .line 303
    .end local v0           #eventType:I
    :catch_13
    move-exception v1

    .line 304
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_6
.end method

.method public final parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 94
    :try_start_3
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_8} :catch_13

    move-result v1

    .line 98
    .local v1, eventType:I
    if-eqz v1, :cond_1c

    .line 99
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    .end local v1           #eventType:I
    :catch_13
    move-exception v0

    .line 96
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not parse GData feed."

    invoke-direct {v5, v6, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 104
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #eventType:I
    :cond_1c
    :try_start_1c
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_21} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_38

    move-result v1

    .line 110
    :goto_22
    const/4 v5, 0x1

    if-eq v1, v5, :cond_97

    .line 111
    packed-switch v1, :pswitch_data_a0

    .line 140
    :cond_28
    :try_start_28
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2d} :catch_85
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_8e

    move-result v1

    goto :goto_22

    .line 105
    :catch_2f
    move-exception v4

    .line 106
    .local v4, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 107
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_38
    move-exception v2

    .line 108
    .local v2, ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 113
    .end local v2           #ioe:Ljava/io/IOException;
    :pswitch_41
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, name:Ljava/lang/String;
    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 116
    :try_start_4f
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parsePartialFeed()Lcom/google/wireless/gdata2/data/Feed;
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_52} :catch_54
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5d

    move-result-object v5

    .line 124
    :goto_53
    return-object v5

    .line 117
    :catch_54
    move-exception v4

    .line 118
    .restart local v4       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Unable to parse <partial> feed start"

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 119
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5d
    move-exception v2

    .line 120
    .restart local v2       #ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Unable to parse <partial> feed start"

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 122
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_66
    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 124
    :try_start_6e
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata2/data/Feed;
    :try_end_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_71} :catch_73
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7c

    move-result-object v5

    goto :goto_53

    .line 125
    :catch_73
    move-exception v4

    .line 126
    .restart local v4       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Unable to parse <feed>."

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 128
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7c
    move-exception v2

    .line 129
    .restart local v2       #ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Unable to parse <feed>."

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 141
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #name:Ljava/lang/String;
    :catch_85
    move-exception v4

    .line 142
    .restart local v4       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 143
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8e
    move-exception v2

    .line 144
    .restart local v2       #ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 147
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_97
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "No <feed> found in document."

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    nop

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_41
    .end packed-switch
.end method

.method public parseStandaloneEntry()Lcom/google/wireless/gdata2/data/Entry;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    .line 386
    .local v1, entry:Lcom/google/wireless/gdata2/data/Entry;
    :try_start_7
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_c} :catch_17

    move-result v2

    .line 390
    .local v2, eventType:I
    if-eqz v2, :cond_20

    .line 391
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v6, v7}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 387
    .end local v2           #eventType:I
    :catch_17
    move-exception v0

    .line 388
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Could not parse GData entry."

    invoke-direct {v6, v7, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 396
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #eventType:I
    :cond_20
    :try_start_20
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_25} :catch_33
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_3c

    move-result v2

    .line 402
    :goto_26
    const/4 v6, 0x1

    if-eq v2, v6, :cond_90

    .line 403
    packed-switch v2, :pswitch_data_98

    .line 436
    :cond_2c
    :try_start_2c
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_31} :catch_87

    move-result v2

    goto :goto_26

    .line 397
    :catch_33
    move-exception v5

    .line 398
    .local v5, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Could not read next event."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 399
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3c
    move-exception v3

    .line 400
    .local v3, ioe:Ljava/io/IOException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Could not read next event."

    invoke-direct {v6, v7, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 405
    .end local v3           #ioe:Ljava/io/IOException;
    :pswitch_45
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, name:Ljava/lang/String;
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 408
    :try_start_53
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_60

    .line 420
    :goto_56
    return-object v1

    .line 410
    :catch_57
    move-exception v5

    .line 411
    .restart local v5       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Unable to parse <partial> entry."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 413
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_60
    move-exception v3

    .line 414
    .restart local v3       #ioe:Ljava/io/IOException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Unable to parse <partial> entry."

    invoke-direct {v6, v7, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 417
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_69
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 419
    :try_start_71
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_7e

    goto :goto_56

    .line 421
    :catch_75
    move-exception v5

    .line 422
    .restart local v5       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Unable to parse <entry>."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 424
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7e
    move-exception v3

    .line 425
    .restart local v3       #ioe:Ljava/io/IOException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Unable to parse <entry>."

    invoke-direct {v6, v7, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 437
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #name:Ljava/lang/String;
    :catch_87
    move-exception v5

    .line 438
    .restart local v5       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Could not read next event."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 441
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_90
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "No <entry> found in document."

    invoke-direct {v6, v7}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 403
    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_45
    .end packed-switch
.end method

.method public readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    .registers 10
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 313
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v5

    if-nez v5, :cond_f

    .line 314
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 319
    :cond_f
    :try_start_f
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_14} :catch_35

    move-result v1

    .line 324
    .local v1, eventType:I
    const/4 v5, 0x2

    if-eq v1, v5, :cond_3e

    .line 325
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected event START_TAG: Actual event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 320
    .end local v1           #eventType:I
    :catch_35
    move-exception v0

    .line 321
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not parse entry."

    invoke-direct {v5, v6, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 329
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #eventType:I
    :cond_3e
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, name:Ljava/lang/String;
    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 335
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected <entry> or <partial>: Actual element: <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 339
    :cond_73
    if-nez p1, :cond_85

    .line 340
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object p1

    .line 346
    :goto_79
    :try_start_79
    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 347
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_84
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_79 .. :try_end_84} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_84} :catch_b4

    .line 370
    :goto_84
    return-object p1

    .line 342
    :cond_85
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    goto :goto_79

    .line 349
    :cond_89
    :try_start_89
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_8c
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_89 .. :try_end_8c} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_8c} :catch_b4

    goto :goto_84

    .line 351
    :catch_8d
    move-exception v3

    .line 353
    .local v3, xppe1:Lcom/google/wireless/gdata2/parser/ParseException;
    :try_start_8e
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_97

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8e .. :try_end_97} :catch_b0

    .line 359
    :cond_97
    :goto_97
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse <entry>, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 354
    :catch_b0
    move-exception v4

    .line 357
    .local v4, xppe2:Lorg/xmlpull/v1/XmlPullParserException;
    iput-boolean v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_97

    .line 360
    .end local v3           #xppe1:Lcom/google/wireless/gdata2/parser/ParseException;
    .end local v4           #xppe2:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_b4
    move-exception v3

    .line 362
    .local v3, xppe1:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b5
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_be

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b5 .. :try_end_be} :catch_d7

    .line 368
    :cond_be
    :goto_be
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse <entry>, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 363
    :catch_d7
    move-exception v4

    .line 366
    .restart local v4       #xppe2:Lorg/xmlpull/v1/XmlPullParserException;
    iput-boolean v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_be
.end method

.method protected skipSubTree()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v1, 0x1

    .line 481
    .local v1, level:I
    :goto_1
    if-lez v1, :cond_13

    .line 482
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 483
    .local v0, eventType:I
    packed-switch v0, :pswitch_data_14

    goto :goto_1

    .line 485
    :pswitch_d
    add-int/lit8 v1, v1, 0x1

    .line 486
    goto :goto_1

    .line 488
    :pswitch_10
    add-int/lit8 v1, v1, -0x1

    .line 489
    goto :goto_1

    .line 494
    .end local v0           #eventType:I
    :cond_13
    return-void

    .line 483
    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method protected skipToNextEntry()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v1

    if-nez v1, :cond_e

    .line 452
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_e
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 458
    .local v0, eventType:I
    :goto_14
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    .line 459
    packed-switch v0, :pswitch_data_30

    .line 466
    :cond_1a
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_14

    .line 461
    :pswitch_21
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 468
    :cond_2f
    return-void

    .line 459
    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_21
    .end packed-switch
.end method

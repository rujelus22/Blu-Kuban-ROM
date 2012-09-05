.class public Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.super Ljava/lang/Object;
.source "XmlGDataParser.java"

# interfaces
.implements Lcom/google/wireless/gdata2/parser/GDataParser;


# static fields
.field public static final NAMESPACE_ATOM_URI:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field public static final NAMESPACE_BATCH:Ljava/lang/String; = "batch"

.field public static final NAMESPACE_BATCH_URI:Ljava/lang/String; = "http://schemas.google.com/gdata/batch"

.field public static final NAMESPACE_GD:Ljava/lang/String; = "gd"

.field public static final NAMESPACE_GD_URI:Ljava/lang/String; = "http://schemas.google.com/g/2005"

.field public static final NAMESPACE_OPENSEARCH_1_0_URI:Ljava/lang/String; = "http://a9.com/-/spec/opensearchrss/1.0/"

.field public static final NAMESPACE_OPENSEARCH_1_1_URI:Ljava/lang/String; = "http://a9.com/-/spec/opensearch/1.1/"


# instance fields
.field private fields:Ljava/lang/String;

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
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A XmlGDataParser needs to be constructed with a namespace aware XmlPullParser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    .line 77
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_24

    .line 79
    :try_start_1e
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_24} :catch_25

    .line 84
    :cond_24
    return-void

    .line 80
    :catch_25
    move-exception v0

    .line 81
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not create XmlGDataParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 711
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 715
    invoke-static {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private handleAuthor(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 647
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 650
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <author>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

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

    .line 655
    :cond_41
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 656
    :goto_47
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8c

    .line 657
    packed-switch v0, :pswitch_data_8e

    .line 677
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_47

    .line 659
    :pswitch_54
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 660
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 661
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setAuthor(Ljava/lang/String;)V

    goto :goto_4d

    .line 663
    :cond_6c
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 664
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setEmail(Ljava/lang/String;)V

    goto :goto_4d

    .line 669
    :pswitch_7e
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 670
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 679
    :cond_8c
    return-void

    .line 657
    nop

    :pswitch_data_8e
    .packed-switch 0x2
        :pswitch_54
        :pswitch_7e
    .end packed-switch
.end method

.method private handleBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 684
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->STATUS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 685
    new-instance v0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;-><init>()V

    .line 686
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchStatus(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/batch/BatchStatus;)V

    .line 687
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setStatusCode(I)V

    .line 688
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REASON:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setReason(Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setContentType(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipSubTree()V

    .line 708
    :goto_3a
    return-void

    .line 692
    :cond_3b
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 693
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchId(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V

    goto :goto_3a

    .line 694
    :cond_4d
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 695
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchOperation(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V

    goto :goto_3a

    .line 696
    :cond_61
    const-string v1, "interrupted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 697
    new-instance v0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;-><init>()V

    .line 698
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchInterrupted(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;)V

    .line 699
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REASON:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setReason(Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ERROR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setErrorCount(I)V

    .line 701
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUCCESS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setSuccessCount(I)V

    .line 702
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARSED:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setTotalCount(I)V

    .line 704
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipSubTree()V

    goto :goto_3a

    .line 706
    :cond_a1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected batch element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final parseFeed()Lcom/google/wireless/gdata2/data/Feed;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://schemas.google.com/g/2005"

    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setETag(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 227
    :goto_19
    const/4 v2, 0x1

    if-eq v1, v2, :cond_f8

    .line 228
    packed-switch v1, :pswitch_data_fe

    .line 274
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_19

    .line 230
    :pswitch_26
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v3, "http://a9.com/-/spec/opensearchrss/1.0/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string v3, "http://a9.com/-/spec/opensearch/1.1/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 236
    :cond_42
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TOTAL_RESULTS:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 237
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setTotalResults(I)V

    goto :goto_1f

    .line 239
    :cond_58
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->START_INDEX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 240
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setStartIndex(I)V

    goto :goto_1f

    .line 242
    :cond_6e
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ITEMS_PER_PAGE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 243
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setItemsPerPage(I)V

    goto :goto_1f

    .line 246
    :cond_84
    const-string v3, "http://www.w3.org/2005/Atom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 247
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 248
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setTitle(Ljava/lang/String;)V

    goto :goto_1f

    .line 249
    :cond_9e
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 250
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setId(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 251
    :cond_b1
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 252
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setLastUpdated(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 253
    :cond_c4
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 254
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_dd

    .line 257
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setCategory(Ljava/lang/String;)V

    .line 259
    :cond_dd
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 262
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 264
    :cond_f0
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 277
    :cond_f8
    return-object v0

    .line 269
    :cond_f9
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraElementInFeed(Lcom/google/wireless/gdata2/data/Feed;)V

    goto/16 :goto_1f

    .line 228
    :pswitch_data_fe
    .packed-switch 0x2
        :pswitch_26
    .end packed-switch
.end method

.method private final parsePartialFeed()Lcom/google/wireless/gdata2/data/Feed;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 190
    :goto_11
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3f

    .line 191
    packed-switch v0, :pswitch_data_42

    .line 204
    :cond_17
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_11

    .line 193
    :pswitch_1e
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string v2, "http://www.w3.org/2005/Atom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 197
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 198
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v0

    .line 207
    :goto_3e
    return-object v0

    :cond_3f
    move-object v0, v3

    goto :goto_3e

    .line 191
    nop

    :pswitch_data_42
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
    .parameter
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
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 550
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <entry>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

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

    .line 556
    :cond_35
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setETag(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setFields(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 561
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 562
    :goto_52
    if-eq v0, v5, :cond_1a0

    .line 563
    packed-switch v0, :pswitch_data_1a6

    .line 636
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_52

    .line 565
    :pswitch_5e
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 566
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 639
    :goto_6c
    return-void

    .line 572
    :cond_6d
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleDefaultEntryElements(Lcom/google/wireless/gdata2/data/Entry;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 576
    const-string v1, "http://schemas.google.com/gdata/batch"

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 579
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)V

    goto :goto_57

    .line 580
    :cond_85
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 581
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setId(Ljava/lang/String;)V

    goto :goto_57

    .line 582
    :cond_97
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 583
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setTitle(Ljava/lang/String;)V

    goto :goto_57

    .line 584
    :cond_a9
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 585
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 591
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EDIT_REL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 592
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata2/data/Entry;->setEditUri(Ljava/lang/String;)V

    goto :goto_57

    .line 593
    :cond_d5
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ALTERNATE_REL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXTHTML:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 595
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata2/data/Entry;->setHtmlUri(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 597
    :cond_ea
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_57

    .line 602
    :cond_ef
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 603
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 604
    :cond_102
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 605
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setContentType(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SRC:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setContentSource(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setContent(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 608
    :cond_12b
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 609
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleAuthor(Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_57

    .line 610
    :cond_138
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 611
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_153

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_153

    .line 614
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setCategory(Ljava/lang/String;)V

    .line 616
    :cond_153
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    if-eqz v1, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_57

    .line 619
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/Entry;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 621
    :cond_168
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 622
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setPublicationDate(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 624
    :cond_17b
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 625
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setUpdateDate(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 626
    :cond_18e
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->DELETED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 627
    invoke-virtual {p1, v5}, Lcom/google/wireless/gdata2/data/Entry;->setDeleted(Z)V

    goto/16 :goto_57

    .line 629
    :cond_19b
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_57

    .line 638
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
    .parameter
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
    .parameter
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
    .line 775
    return-void
.end method

.method protected handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 510
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <partial>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

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

    .line 516
    :cond_33
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 520
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 521
    :goto_49
    const/4 v1, 0x1

    if-eq v0, v1, :cond_67

    .line 522
    packed-switch v0, :pswitch_data_68

    .line 532
    :cond_4f
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_49

    .line 524
    :pswitch_56
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 525
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 526
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V

    .line 534
    :cond_67
    return-void

    .line 522
    :pswitch_data_68
    .packed-switch 0x2
        :pswitch_56
    .end packed-switch
.end method

.method public hasMoreData()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 297
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    if-eqz v0, :cond_8

    move v0, v1

    .line 304
    :goto_7
    return v0

    .line 301
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_d} :catch_14

    move-result v0

    .line 302
    if-eq v0, v2, :cond_12

    move v0, v2

    goto :goto_7

    :cond_12
    move v0, v1

    goto :goto_7

    .line 303
    :catch_14
    move-exception v0

    move v0, v1

    .line 304
    goto :goto_7
.end method

.method public final parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 94
    :try_start_3
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_8} :catch_13

    move-result v0

    .line 98
    if-eqz v0, :cond_1c

    .line 99
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :catch_13
    move-exception v0

    .line 96
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not parse GData feed."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 104
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_21} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_38

    move-result v0

    .line 110
    :goto_22
    const/4 v1, 0x1

    if-eq v0, v1, :cond_97

    .line 111
    packed-switch v0, :pswitch_data_a0

    .line 140
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2d} :catch_85
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_8e

    move-result v0

    goto :goto_22

    .line 105
    :catch_2f
    move-exception v0

    .line 106
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 107
    :catch_38
    move-exception v0

    .line 108
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :pswitch_41
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 116
    :try_start_4f
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parsePartialFeed()Lcom/google/wireless/gdata2/data/Feed;
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_52} :catch_54
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5d

    move-result-object v0

    .line 124
    :goto_53
    return-object v0

    .line 117
    :catch_54
    move-exception v0

    .line 118
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <partial> feed start"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 119
    :catch_5d
    move-exception v0

    .line 120
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <partial> feed start"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :cond_66
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 124
    :try_start_6e
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata2/data/Feed;
    :try_end_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_71} :catch_73
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7c

    move-result-object v0

    goto :goto_53

    .line 125
    :catch_73
    move-exception v0

    .line 126
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :catch_7c
    move-exception v0

    .line 129
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    :catch_85
    move-exception v0

    .line 142
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 143
    :catch_8e
    move-exception v0

    .line 144
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 147
    :cond_97
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "No <feed> found in document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    nop

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_41
    .end packed-switch
.end method

.method public parseStandaloneEntry()Lcom/google/wireless/gdata2/data/Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    .line 386
    :try_start_7
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_c} :catch_17

    move-result v1

    .line 390
    if-eqz v1, :cond_20

    .line 391
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :catch_17
    move-exception v0

    .line 388
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not parse GData entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 396
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_25} :catch_33
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_3c

    move-result v1

    .line 402
    :goto_26
    const/4 v2, 0x1

    if-eq v1, v2, :cond_90

    .line 403
    packed-switch v1, :pswitch_data_98

    .line 436
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_31} :catch_87

    move-result v1

    goto :goto_26

    .line 397
    :catch_33
    move-exception v0

    .line 398
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 399
    :catch_3c
    move-exception v0

    .line 400
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 405
    :pswitch_45
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 406
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 408
    :try_start_53
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_60

    .line 420
    :goto_56
    return-object v0

    .line 410
    :catch_57
    move-exception v0

    .line 411
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <partial> entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 413
    :catch_60
    move-exception v0

    .line 414
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <partial> entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 417
    :cond_69
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 419
    :try_start_71
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_7e

    goto :goto_56

    .line 421
    :catch_75
    move-exception v0

    .line 422
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 424
    :catch_7e
    move-exception v0

    .line 425
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 437
    :catch_87
    move-exception v0

    .line 438
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 441
    :cond_90
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "No <entry> found in document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_45
    .end packed-switch
.end method

.method public readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 313
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v0

    if-nez v0, :cond_f

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_14} :catch_35

    move-result v0

    .line 324
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    .line 325
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

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

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :catch_35
    move-exception v0

    .line 321
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not parse entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 329
    :cond_3e
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 333
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 335
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected <entry> or <partial>: Actual element: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_73
    if-nez p1, :cond_85

    .line 340
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    .line 346
    :goto_79
    :try_start_79
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 347
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_84
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_79 .. :try_end_84} :catch_8e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_84} :catch_b5

    .line 370
    :goto_84
    return-object v1

    .line 342
    :cond_85
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    move-object v1, p1

    goto :goto_79

    .line 349
    :cond_8a
    :try_start_8a
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_8d
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_8a .. :try_end_8d} :catch_8e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8a .. :try_end_8d} :catch_b5

    goto :goto_84

    .line 351
    :catch_8e
    move-exception v0

    .line 353
    :try_start_8f
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_98} :catch_b1

    .line 359
    :cond_98
    :goto_98
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse <entry>, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 354
    :catch_b1
    move-exception v2

    .line 357
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_98

    .line 360
    :catch_b5
    move-exception v0

    .line 362
    :try_start_b6
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b6 .. :try_end_bf} :catch_d8

    .line 368
    :cond_bf
    :goto_bf
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse <entry>, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 363
    :catch_d8
    move-exception v2

    .line 366
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_bf
.end method

.method protected skipSubTree()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v0, 0x1

    .line 481
    :goto_1
    if-lez v0, :cond_13

    .line 482
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 483
    packed-switch v1, :pswitch_data_14

    goto :goto_1

    .line 485
    :pswitch_d
    add-int/lit8 v0, v0, 0x1

    .line 486
    goto :goto_1

    .line 488
    :pswitch_10
    add-int/lit8 v0, v0, -0x1

    .line 489
    goto :goto_1

    .line 494
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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v0

    if-nez v0, :cond_e

    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_e
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 458
    :goto_14
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    .line 459
    packed-switch v0, :pswitch_data_30

    .line 466
    :cond_1a
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_14

    .line 461
    :pswitch_21
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 468
    :cond_2f
    return-void

    .line 459
    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_21
    .end packed-switch
.end method

.class public Lcom/google/wireless/gdata2/contacts/parser/xml/XmlGroupEntryGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlGroupEntryGDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/wireless/gdata2/contacts/data/GroupsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/contacts/data/GroupsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .registers 8
    .parameter "entry"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlGroupEntryGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 50
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v4, p1, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    if-nez v4, :cond_10

    .line 51
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Expected GroupEntry!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_10
    move-object v0, p1

    .line 53
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    .line 54
    .local v0, groupEntry:Lcom/google/wireless/gdata2/contacts/data/GroupEntry;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, name:Ljava/lang/String;
    const-string v4, "systemGroup"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 56
    const/4 v4, 0x0

    const-string v5, "id"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, systemGroup:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x0

    .line 59
    :cond_2d
    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setSystemGroup(Ljava/lang/String;)V

    .line 61
    .end local v3           #systemGroup:Ljava/lang/String;
    :cond_30
    return-void
.end method

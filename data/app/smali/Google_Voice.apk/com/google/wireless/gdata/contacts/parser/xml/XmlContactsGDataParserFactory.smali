.class public Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;
.super Ljava/lang/Object;
.source "XmlContactsGDataParserFactory.java"

# interfaces
.implements Lcom/google/wireless/gdata/client/GDataParserFactory;


# instance fields
.field private final xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V
    .registers 2
    .parameter "xmlFactory"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    .line 33
    return-void
.end method


# virtual methods
.method public createGroupEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_c

    move-result-object v0

    .line 49
    .local v0, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata/contacts/parser/xml/XmlGroupEntryGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlGroupEntryGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 46
    .end local v0           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_c
    move-exception v1

    .line 47
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v3, "Could not create XmlPullParser"

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createMediaEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_c

    move-result-object v0

    .line 66
    .local v0, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata/parser/xml/XmlMediaEntryGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata/parser/xml/XmlMediaEntryGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 63
    .end local v0           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_c
    move-exception v1

    .line 64
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v3, "Could not create XmlPullParser"

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_c

    move-result-object v0

    .line 81
    .local v0, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 78
    .end local v0           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_c
    move-exception v1

    .line 79
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v3, "Could not create XmlPullParser"

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 6
    .parameter "entryClass"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 92
    const-class v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-ne p1, v0, :cond_9

    .line 93
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    .line 99
    :goto_8
    return-object v0

    .line 95
    :cond_9
    const-class v0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    if-ne p1, v0, :cond_12

    .line 96
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->createGroupEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    goto :goto_8

    .line 98
    :cond_12
    const-class v0, Lcom/google/wireless/gdata/data/MediaEntry;

    if-ne p1, v0, :cond_1b

    .line 99
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->createMediaEntryFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    goto :goto_8

    .line 101
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected feed type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;
    .registers 7
    .parameter "entry"

    .prologue
    .line 115
    instance-of v2, p1, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-eqz v2, :cond_f

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    .line 117
    .local v0, contactEntry:Lcom/google/wireless/gdata/contacts/data/ContactEntry;
    new-instance v2, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;

    iget-object v3, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-direct {v2, v3, v0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/contacts/data/ContactEntry;)V

    .line 121
    .end local v0           #contactEntry:Lcom/google/wireless/gdata/contacts/data/ContactEntry;
    :goto_e
    return-object v2

    .line 119
    :cond_f
    instance-of v2, p1, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    if-eqz v2, :cond_1e

    move-object v1, p1

    .line 120
    check-cast v1, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    .line 121
    .local v1, groupEntry:Lcom/google/wireless/gdata/contacts/data/GroupEntry;
    new-instance v2, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlGroupEntryGDataSerializer;

    iget-object v3, p0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlGroupEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/contacts/data/GroupEntry;)V

    goto :goto_e

    .line 123
    .end local v1           #groupEntry:Lcom/google/wireless/gdata/contacts/data/GroupEntry;
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected entry type, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

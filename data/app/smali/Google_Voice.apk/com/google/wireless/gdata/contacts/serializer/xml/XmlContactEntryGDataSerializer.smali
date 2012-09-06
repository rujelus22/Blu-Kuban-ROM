.class public Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;
.super Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;
.source "XmlContactEntryGDataSerializer.java"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/contacts/data/ContactEntry;)V
    .registers 3
    .parameter "factory"
    .parameter "entry"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    .line 34
    return-void
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/EmailAddress;)V
    .registers 5
    .parameter "serializer"
    .parameter "email"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    :goto_a
    return-void

    .line 104
    :cond_b
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "email"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    sget-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 106
    const/4 v0, 0x0

    const-string v1, "address"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "email"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;)V
    .registers 7
    .parameter "serializer"
    .parameter "groupMembershipInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, group:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v1

    .line 212
    .local v1, isDeleted:Z
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 213
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v3, "the group must not be empty"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_17
    const-string v2, "http://schemas.google.com/contact/2008"

    const-string v3, "groupMembershipInfo"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const-string v2, "href"

    invoke-interface {p0, v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    const-string v3, "deleted"

    if-eqz v1, :cond_34

    const-string v2, "true"

    :goto_29
    invoke-interface {p0, v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    const-string v2, "http://schemas.google.com/contact/2008"

    const-string v3, "groupMembershipInfo"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    return-void

    .line 218
    :cond_34
    const-string v2, "false"

    goto :goto_29
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ImAddress;)V
    .registers 7
    .parameter "serializer"
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 141
    :goto_b
    return-void

    .line 114
    :cond_c
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "im"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    sget-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_IM:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 116
    const-string v1, "address"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v4, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    .line 134
    sget-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Byte;

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, protocolString:Ljava/lang/String;
    const-string v1, "protocol"

    invoke-interface {p0, v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    .end local v0           #protocolString:Ljava/lang/String;
    :goto_3e
    :sswitch_3e
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "im"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    .line 125
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getProtocolCustom()Ljava/lang/String;

    move-result-object v0

    .line 126
    .restart local v0       #protocolString:Ljava/lang/String;
    if-nez v0, :cond_54

    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the protocol is custom, but the custom string is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_54
    const-string v1, "protocol"

    invoke-interface {p0, v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3e

    .line 119
    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_46
        0xa -> :sswitch_3e
    .end sparse-switch
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/Organization;)V
    .registers 6
    .parameter "serializer"
    .parameter "organization"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/Organization;->getName()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/Organization;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, title:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 174
    :goto_14
    return-void

    .line 159
    :cond_15
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "organization"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    sget-object v2, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

    invoke-static {p0, p1, v2}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 162
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 163
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "orgName"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "orgName"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    :cond_38
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 169
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "orgTitle"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "orgTitle"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    :cond_4f
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v3, "organization"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_14
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/PhoneNumber;)V
    .registers 4
    .parameter "serializer"
    .parameter "phone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 150
    :goto_a
    return-void

    .line 146
    :cond_b
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "phoneNumber"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    sget-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

    invoke-static {p0, p1, v0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 148
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v1, "phoneNumber"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/PostalAddress;)V
    .registers 5
    .parameter "serializer"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 184
    :goto_a
    return-void

    .line 179
    :cond_b
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "postalAddress"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    sget-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

    invoke-static {p0, p1, v1}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V

    .line 181
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, addressValue:Ljava/lang/String;
    if-eqz v0, :cond_20

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    :cond_20
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "postalAddress"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a
.end method

.method private static serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/data/ExtendedProperty;)V
    .registers 8
    .parameter "serializer"
    .parameter "extendedProperty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 224
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->getXmlBlob()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, xmlBlob:Ljava/lang/String;
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v4, "extendedProperty"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 230
    const-string v3, "name"

    invoke-interface {p0, v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    :cond_1f
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 233
    const-string v3, "value"

    invoke-interface {p0, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    :cond_2a
    invoke-static {v2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 236
    invoke-static {p0, v2}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeBlob(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 238
    :cond_33
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v4, "extendedProperty"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    return-void
.end method

.method private static serializeBlob(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 2
    .parameter "serializer"
    .parameter "blob"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    return-void
.end method

.method private static serializeContactsElement(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/Hashtable;)V
    .registers 9
    .parameter "serializer"
    .parameter "element"
    .parameter "typeToRelMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 188
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, label:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->getType()B

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    const/4 v0, 0x1

    .line 191
    .local v0, hasType:Z
    :goto_d
    if-nez v1, :cond_11

    if-eqz v0, :cond_15

    :cond_11
    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 192
    :cond_15
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v3, "exactly one of label or rel must be set"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    .end local v0           #hasType:Z
    :cond_1d
    const/4 v0, 0x0

    goto :goto_d

    .line 195
    .restart local v0       #hasType:Z
    :cond_1f
    if-eqz v1, :cond_26

    .line 196
    const-string v2, "label"

    invoke-interface {p0, v5, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    :cond_26
    if-eqz v0, :cond_3c

    .line 199
    const-string v3, "rel"

    new-instance v2, Ljava/lang/Byte;

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->getType()B

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v5, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :cond_3c
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 203
    const-string v2, "primary"

    const-string v3, "true"

    invoke-interface {p0, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    :cond_49
    return-void
.end method

.method private static serializeYomiName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter "serializer"
    .parameter "yomiName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    :goto_6
    return-void

    .line 252
    :cond_7
    const-string v0, "http://schemas.google.com/contact/2008"

    const-string v1, "yomiName"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    const-string v0, "http://schemas.google.com/contact/2008"

    const-string v1, "yomiName"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;->declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 39
    const-string v0, "gContact"

    const-string v1, "http://schemas.google.com/contact/2008"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected getContactEntry()Lcom/google/wireless/gdata/contacts/data/ContactEntry;
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    return-object v0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 14
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->getContactEntry()Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    move-result-object v7

    .line 53
    .local v7, entry:Lcom/google/wireless/gdata/contacts/data/ContactEntry;
    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->validate()V

    .line 55
    const-string v8, "http://schemas.google.com/contacts/2008/rel#edit-photo"

    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getLinkEditPhotoHref()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getLinkEditPhotoType()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v8, v9, v10}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v8, "http://schemas.google.com/contacts/2008/rel#photo"

    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getLinkPhotoHref()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getLinkPhotoType()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v8, v9, v10}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeLink(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 64
    .local v1, eachEmail:Ljava/util/Enumeration;
    :goto_29
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 65
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/gdata/contacts/data/EmailAddress;

    invoke-static {p1, v8}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/EmailAddress;)V

    goto :goto_29

    .line 68
    :cond_39
    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getImAddresses()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 69
    .local v4, eachIm:Ljava/util/Enumeration;
    :goto_41
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 70
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/gdata/contacts/data/ImAddress;

    invoke-static {p1, v8}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/ImAddress;)V

    goto :goto_41

    .line 73
    :cond_51
    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .line 74
    .local v6, eachPhone:Ljava/util/Enumeration;
    :goto_59
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_69

    .line 75
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;

    invoke-static {p1, v8}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/PhoneNumber;)V

    goto :goto_59

    .line 78
    :cond_69
    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getPostalAddresses()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 79
    .local v0, eachAddress:Ljava/util/Enumeration;
    :goto_71
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_81

    .line 80
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/gdata/contacts/data/PostalAddress;

    invoke-static {p1, v8}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/PostalAddress;)V

    goto :goto_71

    .line 83
    :cond_81
    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getOrganizations()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 84
    .local v5, eachOrganization:Ljava/util/Enumeration;
    :goto_89
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_99

    .line 85
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/gdata/contacts/data/Organization;

    invoke-static {p1, v8}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/Organization;)V

    goto :goto_89

    .line 88
    :cond_99
    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getExtendedProperties()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 89
    .local v2, eachExtendedProperty:Ljava/util/Enumeration;
    :goto_a1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 90
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/gdata/data/ExtendedProperty;

    invoke-static {p1, v8}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/data/ExtendedProperty;)V

    goto :goto_a1

    .line 93
    :cond_b1
    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 94
    .local v3, eachGroup:Ljava/util/Enumeration;
    :goto_b9
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_c9

    .line 95
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;

    invoke-static {p1, v8}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;)V

    goto :goto_b9

    .line 98
    :cond_c9
    invoke-virtual {v7}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getYomiName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/google/wireless/gdata/contacts/serializer/xml/XmlContactEntryGDataSerializer;->serializeYomiName(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 99
    return-void
.end method

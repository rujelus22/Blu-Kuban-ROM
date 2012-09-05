.class public Lch/ethz/vppserver/ippclient/IppJaxb;
.super Ljava/lang/Object;
.source "IppJaxb.java"


# instance fields
.field private _attributeGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private _tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v5, p0, Lch/ethz/vppserver/ippclient/IppJaxb;->_tagList:Ljava/util/List;

    .line 41
    iput-object v5, p0, Lch/ethz/vppserver/ippclient/IppJaxb;->_attributeGroupList:Ljava/util/List;

    .line 44
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 45
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 46
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 47
    .local v4, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const-class v5, Lch/ethz/vppserver/ippclient/IppJaxb;

    const-string v6, "ipplistofattributes.xml"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 48
    .local v2, inputStream:Ljava/io/InputStream;
    const-string v5, "UTF8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v4}, Lch/ethz/vppserver/ippclient/IppJaxb;->parseAttributeList(Lorg/xmlpull/v1/XmlPullParser;)Lch/ethz/vppserver/schema/ippclient/AttributeList;

    move-result-object v0

    .line 51
    .local v0, attributeList:Lch/ethz/vppserver/schema/ippclient/AttributeList;
    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeList;->getAttributeGroup()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lch/ethz/vppserver/ippclient/IppJaxb;->_attributeGroupList:Ljava/util/List;

    .line 53
    const-class v5, Lch/ethz/vppserver/ippclient/IppJaxb;

    const-string v6, "ipplistoftag.xml"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 54
    const-string v5, "UTF8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, v4}, Lch/ethz/vppserver/ippclient/IppJaxb;->parseTagList(Lorg/xmlpull/v1/XmlPullParser;)Lch/ethz/vppserver/schema/ippclient/TagList;

    move-result-object v3

    .line 56
    .local v3, tagList:Lch/ethz/vppserver/schema/ippclient/TagList;
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/TagList;->getTag()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lch/ethz/vppserver/ippclient/IppJaxb;->_tagList:Ljava/util/List;

    .line 57
    return-void
.end method

.method private parseAttributeList(Lorg/xmlpull/v1/XmlPullParser;)Lch/ethz/vppserver/schema/ippclient/AttributeList;
    .registers 15
    .parameter "parser"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x0

    .line 105
    :try_start_3
    new-instance v2, Lch/ethz/vppserver/schema/ippclient/AttributeList;

    invoke-direct {v2}, Lch/ethz/vppserver/schema/ippclient/AttributeList;-><init>()V

    .line 106
    .local v2, attributeList:Lch/ethz/vppserver/schema/ippclient/AttributeList;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 107
    .local v5, eventType:I
    :goto_c
    const/4 v9, 0x1

    if-ne v5, v9, :cond_10

    .line 185
    .end local v2           #attributeList:Lch/ethz/vppserver/schema/ippclient/AttributeList;
    .end local v5           #eventType:I
    :goto_f
    return-object v2

    .line 108
    .restart local v2       #attributeList:Lch/ethz/vppserver/schema/ippclient/AttributeList;
    .restart local v5       #eventType:I
    :cond_10
    if-ne v5, v11, :cond_60

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "attribute-group"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 109
    new-instance v1, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    invoke-direct {v1}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;-><init>()V

    .line 110
    .local v1, attributeGroup:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    const/4 v9, 0x0

    const-string v10, "tag"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->setTag(Ljava/lang/String;)V

    .line 111
    const/4 v9, 0x0

    const-string v10, "tag-name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->setTagName(Ljava/lang/String;)V

    .line 112
    const/4 v9, 0x0

    const-string v10, "description"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->setDescription(Ljava/lang/String;)V

    .line 113
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v9

    if-nez v9, :cond_60

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 115
    :goto_4b
    if-ne v5, v12, :cond_65

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "attribute-group"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 176
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/AttributeList;->getAttributeGroup()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v1           #attributeGroup:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    :cond_60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_c

    .line 116
    .restart local v1       #attributeGroup:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    :cond_65
    if-ne v5, v11, :cond_ab

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "attribute"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 117
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/Attribute;-><init>()V

    .line 118
    .local v0, attribute:Lch/ethz/vppserver/schema/ippclient/Attribute;
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lch/ethz/vppserver/schema/ippclient/Attribute;->setName(Ljava/lang/String;)V

    .line 119
    const/4 v9, 0x0

    const-string v10, "description"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lch/ethz/vppserver/schema/ippclient/Attribute;->setDescription(Ljava/lang/String;)V

    .line 120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v9

    if-nez v9, :cond_a4

    .line 121
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 122
    :goto_96
    if-ne v5, v12, :cond_b0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "attribute"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 172
    :cond_a4
    invoke-virtual {v1}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v0           #attribute:Lch/ethz/vppserver/schema/ippclient/Attribute;
    :cond_ab
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_4b

    .line 123
    .restart local v0       #attribute:Lch/ethz/vppserver/schema/ippclient/Attribute;
    :cond_b0
    if-ne v5, v11, :cond_10a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "attribute-value"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 124
    new-instance v3, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-direct {v3}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 125
    .local v3, attributeValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    const/4 v9, 0x0

    const-string v10, "tag"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTag(Ljava/lang/String;)V

    .line 126
    const/4 v9, 0x0

    const-string v10, "tag-name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTagName(Ljava/lang/String;)V

    .line 127
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 128
    const/4 v9, 0x0

    const-string v10, "description"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setDescription(Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v9

    if-nez v9, :cond_103

    .line 130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 131
    :goto_f5
    if-ne v5, v12, :cond_10f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "attribute-value"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 167
    :cond_103
    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v3           #attributeValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    :cond_10a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_96

    .line 132
    .restart local v3       #attributeValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    :cond_10f
    if-ne v5, v11, :cond_17f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "set-of-enum"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17f

    .line 133
    new-instance v6, Lch/ethz/vppserver/schema/ippclient/SetOfEnum;

    invoke-direct {v6}, Lch/ethz/vppserver/schema/ippclient/SetOfEnum;-><init>()V

    .line 134
    .local v6, setOfEnum:Lch/ethz/vppserver/schema/ippclient/SetOfEnum;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v9

    if-nez v9, :cond_13a

    .line 135
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 136
    :goto_12c
    if-ne v5, v12, :cond_142

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "set-of-enum"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_142

    .line 147
    :cond_13a
    invoke-virtual {v3, v6}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setSetOfEnum(Lch/ethz/vppserver/schema/ippclient/SetOfEnum;)V

    .line 164
    .end local v6           #setOfEnum:Lch/ethz/vppserver/schema/ippclient/SetOfEnum;
    :cond_13d
    :goto_13d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_f5

    .line 137
    .restart local v6       #setOfEnum:Lch/ethz/vppserver/schema/ippclient/SetOfEnum;
    :cond_142
    if-ne v5, v11, :cond_17a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "enum"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17a

    .line 138
    new-instance v4, Lch/ethz/vppserver/schema/ippclient/Enum;

    invoke-direct {v4}, Lch/ethz/vppserver/schema/ippclient/Enum;-><init>()V

    .line 139
    .local v4, e:Lch/ethz/vppserver/schema/ippclient/Enum;
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lch/ethz/vppserver/schema/ippclient/Enum;->setName(Ljava/lang/String;)V

    .line 140
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lch/ethz/vppserver/schema/ippclient/Enum;->setValue(Ljava/lang/String;)V

    .line 141
    const/4 v9, 0x0

    const-string v10, "description"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lch/ethz/vppserver/schema/ippclient/Enum;->setDescription(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v6}, Lch/ethz/vppserver/schema/ippclient/SetOfEnum;->getEnum()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v4           #e:Lch/ethz/vppserver/schema/ippclient/Enum;
    :cond_17a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_12c

    .line 148
    .end local v6           #setOfEnum:Lch/ethz/vppserver/schema/ippclient/SetOfEnum;
    :cond_17f
    if-ne v5, v11, :cond_13d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "set-of-keyword"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13d

    .line 149
    new-instance v7, Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;

    invoke-direct {v7}, Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;-><init>()V

    .line 150
    .local v7, setOfKeyword:Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v9

    if-nez v9, :cond_1aa

    .line 151
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 152
    :goto_19c
    if-ne v5, v12, :cond_1b2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "set-of-keyword"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2

    .line 162
    :cond_1aa
    invoke-virtual {v3, v7}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setSetOfKeyword(Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;)V

    goto :goto_13d

    .line 182
    .end local v0           #attribute:Lch/ethz/vppserver/schema/ippclient/Attribute;
    .end local v1           #attributeGroup:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    .end local v2           #attributeList:Lch/ethz/vppserver/schema/ippclient/AttributeList;
    .end local v3           #attributeValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    .end local v5           #eventType:I
    .end local v7           #setOfKeyword:Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;
    :catch_1ae
    move-exception v4

    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    move-object v2, v8

    .line 183
    goto/16 :goto_f

    .line 153
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0       #attribute:Lch/ethz/vppserver/schema/ippclient/Attribute;
    .restart local v1       #attributeGroup:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    .restart local v2       #attributeList:Lch/ethz/vppserver/schema/ippclient/AttributeList;
    .restart local v3       #attributeValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    .restart local v5       #eventType:I
    .restart local v7       #setOfKeyword:Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;
    :cond_1b2
    if-ne v5, v11, :cond_1e0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "keyword"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e0

    .line 154
    new-instance v4, Lch/ethz/vppserver/schema/ippclient/Keyword;

    invoke-direct {v4}, Lch/ethz/vppserver/schema/ippclient/Keyword;-><init>()V

    .line 155
    .local v4, e:Lch/ethz/vppserver/schema/ippclient/Keyword;
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lch/ethz/vppserver/schema/ippclient/Keyword;->setValue(Ljava/lang/String;)V

    .line 156
    const/4 v9, 0x0

    const-string v10, "description"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lch/ethz/vppserver/schema/ippclient/Keyword;->setDescription(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v7}, Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;->getKeyword()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v4           #e:Lch/ethz/vppserver/schema/ippclient/Keyword;
    :cond_1e0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1e3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_1e3} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1e3} :catch_1e5

    move-result v5

    goto :goto_19c

    .line 184
    .end local v0           #attribute:Lch/ethz/vppserver/schema/ippclient/Attribute;
    .end local v1           #attributeGroup:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    .end local v2           #attributeList:Lch/ethz/vppserver/schema/ippclient/AttributeList;
    .end local v3           #attributeValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    .end local v5           #eventType:I
    .end local v7           #setOfKeyword:Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;
    :catch_1e5
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    move-object v2, v8

    .line 185
    goto/16 :goto_f
.end method

.method private parseTagList(Lorg/xmlpull/v1/XmlPullParser;)Lch/ethz/vppserver/schema/ippclient/TagList;
    .registers 10
    .parameter "parser"

    .prologue
    const/4 v5, 0x0

    .line 79
    :try_start_1
    new-instance v4, Lch/ethz/vppserver/schema/ippclient/TagList;

    invoke-direct {v4}, Lch/ethz/vppserver/schema/ippclient/TagList;-><init>()V

    .line 80
    .local v4, tagList:Lch/ethz/vppserver/schema/ippclient/TagList;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 81
    .local v1, eventType:I
    :goto_a
    const/4 v6, 0x1

    if-ne v1, v6, :cond_e

    .line 99
    .end local v1           #eventType:I
    .end local v4           #tagList:Lch/ethz/vppserver/schema/ippclient/TagList;
    :goto_d
    return-object v4

    .line 82
    .restart local v1       #eventType:I
    .restart local v4       #tagList:Lch/ethz/vppserver/schema/ippclient/TagList;
    :cond_e
    const/4 v6, 0x2

    if-ne v1, v6, :cond_5b

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "tag"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 83
    new-instance v3, Lch/ethz/vppserver/schema/ippclient/Tag;

    invoke-direct {v3}, Lch/ethz/vppserver/schema/ippclient/Tag;-><init>()V

    .line 84
    .local v3, tag:Lch/ethz/vppserver/schema/ippclient/Tag;
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lch/ethz/vppserver/schema/ippclient/Tag;->setName(Ljava/lang/String;)V

    .line 85
    const/4 v6, 0x0

    const-string v7, "value"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lch/ethz/vppserver/schema/ippclient/Tag;->setValue(Ljava/lang/String;)V

    .line 86
    const/4 v6, 0x0

    const-string v7, "description"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lch/ethz/vppserver/schema/ippclient/Tag;->setDescription(Ljava/lang/String;)V

    .line 87
    const/4 v6, 0x0

    const-string v7, "max"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, max:Ljava/lang/String;
    if-eqz v2, :cond_54

    .line 89
    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v3, v6}, Lch/ethz/vppserver/schema/ippclient/Tag;->setMax(Ljava/lang/Short;)V

    .line 91
    :cond_54
    invoke-virtual {v4}, Lch/ethz/vppserver/schema/ippclient/TagList;->getTag()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v2           #max:Ljava/lang/String;
    .end local v3           #tag:Lch/ethz/vppserver/schema/ippclient/Tag;
    :cond_5b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_5e} :catch_60
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5e} :catch_63

    move-result v1

    goto :goto_a

    .line 96
    .end local v1           #eventType:I
    .end local v4           #tagList:Lch/ethz/vppserver/schema/ippclient/TagList;
    :catch_60
    move-exception v0

    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    move-object v4, v5

    .line 97
    goto :goto_d

    .line 98
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_63
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v4, v5

    .line 99
    goto :goto_d
.end method


# virtual methods
.method public getAttributeGroupList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppJaxb;->_attributeGroupList:Ljava/util/List;

    return-object v0
.end method

.method public getTagList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppJaxb;->_tagList:Ljava/util/List;

    return-object v0
.end method

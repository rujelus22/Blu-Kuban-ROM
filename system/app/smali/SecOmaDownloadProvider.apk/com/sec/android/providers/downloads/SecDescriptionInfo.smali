.class public Lcom/sec/android/providers/downloads/SecDescriptionInfo;
.super Ljava/lang/Object;
.source "SecDescriptionInfo.java"


# instance fields
.field holderForStartAndLength:[I

.field private mDDVersion:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mIconURI:Ljava/lang/String;

.field private mInfoURL:Ljava/lang/String;

.field private mInstallNotifyURI:Ljava/lang/String;

.field private mInstallParam:Ljava/lang/String;

.field public mKeyname:Ljava/lang/String;

.field public mKeyvalue:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNameSpace:Ljava/lang/String;

.field private mNextURL:Ljava/lang/String;

.field private mObjectURI:Ljava/lang/String;

.field private mRootElement:Ljava/lang/String;

.field private mSize:I

.field private mType:Ljava/lang/String;

.field private mType1:Ljava/lang/String;

.field private mType2:Ljava/lang/String;

.field private mVendor:Ljava/lang/String;

.field mXpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mObjectURI:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType1:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType2:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mInstallNotifyURI:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mDDVersion:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mVendor:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mDescription:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mNextURL:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mInfoURL:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mIconURI:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mInstallParam:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mRootElement:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mNameSpace:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 47
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->holderForStartAndLength:[I

    return-void
.end method


# virtual methods
.method public GetObjectURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mObjectURI:Ljava/lang/String;

    return-object v0
.end method

.method public GetRootElement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mRootElement:Ljava/lang/String;

    return-object v0
.end method

.method public UpdateDDinfo()V
    .registers 4

    .prologue
    .line 180
    const-string v0, "objectURI"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 181
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mObjectURI:Ljava/lang/String;

    .line 253
    :cond_e
    :goto_e
    return-void

    .line 186
    :cond_f
    const-string v0, "type"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 187
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 188
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType:Ljava/lang/String;

    goto :goto_e

    .line 189
    :cond_22
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType1:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 190
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType1:Ljava/lang/String;

    goto :goto_e

    .line 191
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType2:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 192
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType2:Ljava/lang/String;

    goto :goto_e

    .line 194
    :cond_34
    const-string v0, "size"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 195
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mSize:I

    goto :goto_e

    .line 200
    :cond_4b
    const-string v0, "installNotifyURI"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 201
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mInstallNotifyURI:Ljava/lang/String;

    goto :goto_e

    .line 206
    :cond_5a
    const-string v0, "name"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 207
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mName:Ljava/lang/String;

    goto :goto_e

    .line 212
    :cond_69
    const-string v0, "DDVersion"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 213
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mDDVersion:Ljava/lang/String;

    goto :goto_e

    .line 218
    :cond_78
    const-string v0, "vendor"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 219
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mVendor:Ljava/lang/String;

    goto :goto_e

    .line 224
    :cond_87
    const-string v0, "description"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 225
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mDescription:Ljava/lang/String;

    .line 226
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeynamedescriptionValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 228
    :cond_b1
    const-string v0, "nextURL"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 229
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mNextURL:Ljava/lang/String;

    goto/16 :goto_e

    .line 234
    :cond_c1
    const-string v0, "infoURL"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 235
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mInfoURL:Ljava/lang/String;

    goto/16 :goto_e

    .line 240
    :cond_d1
    const-string v0, "iconURI"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 241
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mIconURI:Ljava/lang/String;

    goto/16 :goto_e

    .line 246
    :cond_e1
    const-string v0, "installParam"

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 247
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mInstallParam:Ljava/lang/String;

    goto/16 :goto_e
.end method

.method public getContentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallNotifyURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mInstallNotifyURI:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecMimeType1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType1:Ljava/lang/String;

    return-object v0
.end method

.method public getSecMimeType2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mType2:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mSize:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public parseDD(Ljava/lang/String;)V
    .registers 5
    .parameter "xmlData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v1, "org.xmlpull.v1.XmlPullParserFactory"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 79
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 81
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 88
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->processDocument()V

    .line 90
    return-void
.end method

.method public processDocument()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 93
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 94
    .local v0, eventType:I
    const/4 v1, 0x1

    .line 95
    .local v1, flag:Z
    const/4 v2, 0x0

    .line 97
    .local v2, rootvalidation:Z
    :cond_9
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1b

    .line 98
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p0, v3}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->processStartElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    const/4 v1, 0x1

    .line 117
    :cond_12
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 118
    if-ne v0, v5, :cond_9

    .line 120
    :goto_1a
    return-void

    .line 100
    :cond_1b
    const/4 v3, 0x3

    if-eq v0, v3, :cond_12

    .line 102
    const/4 v3, 0x4

    if-ne v0, v3, :cond_12

    .line 103
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p0, v3}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->processText(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 104
    if-ne v1, v5, :cond_12

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->UpdateDDinfo()V

    .line 106
    const/4 v1, 0x0

    .line 107
    if-nez v2, :cond_12

    .line 108
    const/4 v2, 0x1

    .line 109
    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mRootElement:Ljava/lang/String;

    const-string v4, "media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mNameSpace:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 111
    :cond_3d
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mRootElement:Ljava/lang/String;

    goto :goto_1a
.end method

.method public processStartElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .parameter "mXpp"

    .prologue
    .line 125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, name:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, uri:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mRootElement:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 131
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mRootElement:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mNameSpace:Ljava/lang/String;

    .line 134
    :cond_10
    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyname:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public processText(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .parameter "mXpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->holderForStartAndLength:[I

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v1

    .line 147
    .local v1, ch:[C
    if-eqz v1, :cond_4d

    .line 148
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->holderForStartAndLength:[I

    const/4 v6, 0x0

    aget v4, v5, v6

    .line 149
    .local v4, start:I
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->holderForStartAndLength:[I

    const/4 v6, 0x1

    aget v3, v5, v6

    .line 150
    .local v3, length:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .local v0, buf:Ljava/lang/StringBuffer;
    move v2, v4

    .local v2, i:I
    :goto_18
    add-int v5, v4, v3

    if-ge v2, v5, :cond_47

    .line 153
    aget-char v5, v1, v2

    sparse-switch v5, :sswitch_data_4e

    .line 170
    aget-char v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 155
    :sswitch_29
    const-string v5, "\\\\"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 158
    :sswitch_2f
    const-string v5, "\\\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 161
    :sswitch_35
    const-string v5, "\\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 164
    :sswitch_3b
    const-string v5, "\\r"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 167
    :sswitch_41
    const-string v5, "\\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 174
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->mKeyvalue:Ljava/lang/String;

    .line 176
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #start:I
    :cond_4d
    return-void

    .line 153
    :sswitch_data_4e
    .sparse-switch
        0x9 -> :sswitch_41
        0xa -> :sswitch_35
        0xd -> :sswitch_3b
        0x22 -> :sswitch_2f
        0x5c -> :sswitch_29
    .end sparse-switch
.end method

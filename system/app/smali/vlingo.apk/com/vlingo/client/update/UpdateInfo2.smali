.class public Lcom/vlingo/client/update/UpdateInfo2;
.super Ljava/lang/Object;
.source "UpdateInfo2.java"

# interfaces
.implements Lcom/vlingo/client/core/xml/XmlHandler;


# static fields
.field public static NORMAL_UPDATE_INTERVAL:J = 0x0L

.field private static final XML_ATTRIBUTE_LATEST:B = 0x32t

.field private static final XML_ATTRIBUTE_MIN_REQUIRED:B = 0x33t

.field private static final XML_ELEMENT_BANNER_TEXT:B = 0x8t

.field private static final XML_ELEMENT_BUTTON_TEXT:B = 0x9t

.field private static final XML_ELEMENT_CHECK_INTERVAL:B = 0x5t

.field private static final XML_ELEMENT_CLIENT_DOWNLOAD_URL:B = 0x3t

.field private static final XML_ELEMENT_CLIENT_VERSION:B = 0x2t

.field private static final XML_ELEMENT_DISMISSED:B = 0x7t

.field private static final XML_ELEMENT_MESSAGE:B = 0x4t

.field private static final XML_ELEMENT_RETRIEVAL_TIME:B = 0x6t

.field private static final XML_ELEMENT_UPDATE:B = 0x1t

.field private static xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

.field private static xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;


# instance fields
.field private bannerText:Ljava/lang/String;

.field private buttonText:Ljava/lang/String;

.field private checkInterval:J

.field private dismissed:Z

.field private downloadUrl:Ljava/lang/String;

.field private latestVersion:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private requiredVersion:Ljava/lang/String;

.field private timeRetrieved:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x2

    .line 25
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/vlingo/client/update/UpdateInfo2;->NORMAL_UPDATE_INTERVAL:J

    .line 203
    invoke-static {v4}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->createNewHashtable(I)Lcom/vlingo/client/core/util/ToIntHashtable;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 207
    invoke-static {v3}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->createNewHashtable(I)Lcom/vlingo/client/core/util/ToIntHashtable;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 210
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "update"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 211
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "client-version"

    invoke-interface {v0, v1, v3}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 212
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "message"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 213
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "client-download-url"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 214
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "check-interval"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 215
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "retrieval-time"

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 216
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "dismissed"

    invoke-interface {v0, v1, v4}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 217
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "banner-text"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 218
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "button-text"

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 219
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "latest"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 220
    sget-object v0, Lcom/vlingo/client/update/UpdateInfo2;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "min-required"

    const/16 v2, 0x33

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .parameter "xml"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-wide v3, Lcom/vlingo/client/update/UpdateInfo2;->NORMAL_UPDATE_INTERVAL:J

    iput-wide v3, p0, Lcom/vlingo/client/update/UpdateInfo2;->checkInterval:J

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vlingo/client/update/UpdateInfo2;->timeRetrieved:J

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 42
    .local v1, chars:[C
    new-instance v0, Lcom/vlingo/client/core/xml/XmlParser;

    array-length v3, v1

    sget-object v5, Lcom/vlingo/client/update/UpdateInfo2;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    sget-object v6, Lcom/vlingo/client/update/UpdateInfo2;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    move-object v4, p0

    move v7, v2

    move v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/vlingo/client/core/xml/XmlParser;-><init>([CIILcom/vlingo/client/core/xml/XmlHandler;Lcom/vlingo/client/core/util/ToIntHashtable;Lcom/vlingo/client/core/util/ToIntHashtable;ZZ)V

    .line 43
    .local v0, parser:Lcom/vlingo/client/core/xml/XmlParser;
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlParser;->parseXml()V

    .line 44
    return-void
.end method


# virtual methods
.method public beginDocument()V
    .registers 1

    .prologue
    .line 185
    return-void
.end method

.method public beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V
    .registers 14
    .parameter "elementType"
    .parameter "attributes"
    .parameter "cData"
    .parameter "elementEndPosition"

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, cDataString:Ljava/lang/String;
    if-eqz p3, :cond_7

    .line 129
    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_7
    packed-switch p1, :pswitch_data_7c

    .line 179
    :cond_a
    :goto_a
    return-void

    .line 134
    :pswitch_b
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    invoke-virtual {p2}, Lcom/vlingo/client/core/xml/XmlAttributes;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_a

    .line 135
    invoke-virtual {p2, v2}, Lcom/vlingo/client/core/xml/XmlAttributes;->getAttribute(I)Lcom/vlingo/client/core/xml/XmlAttribute;

    move-result-object v0

    .line 136
    .local v0, attrib:Lcom/vlingo/client/core/xml/XmlAttribute;
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlAttribute;->getType()I

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_27

    .line 137
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/update/UpdateInfo2;->latestVersion:Ljava/lang/String;

    .line 134
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 138
    :cond_27
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlAttribute;->getType()I

    move-result v5

    const/16 v6, 0x33

    if-ne v5, v6, :cond_24

    .line 139
    invoke-virtual {v0}, Lcom/vlingo/client/core/xml/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/update/UpdateInfo2;->requiredVersion:Ljava/lang/String;

    goto :goto_24

    .line 144
    .end local v0           #attrib:Lcom/vlingo/client/core/xml/XmlAttribute;
    .end local v2           #i:I
    :pswitch_36
    iput-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->downloadUrl:Ljava/lang/String;

    goto :goto_a

    .line 147
    :pswitch_39
    iput-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->message:Ljava/lang/String;

    goto :goto_a

    .line 150
    :pswitch_3c
    if-eqz v1, :cond_a

    .line 151
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v3, v5, v7

    .line 152
    .local v3, xmlCheckInterval:J
    sget-wide v5, Lcom/vlingo/client/update/UpdateInfo2;->NORMAL_UPDATE_INTERVAL:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_4e

    .line 154
    sget-wide v3, Lcom/vlingo/client/update/UpdateInfo2;->NORMAL_UPDATE_INTERVAL:J

    .line 155
    :cond_4e
    iput-wide v3, p0, Lcom/vlingo/client/update/UpdateInfo2;->checkInterval:J

    goto :goto_a

    .line 159
    .end local v3           #xmlCheckInterval:J
    :pswitch_51
    if-eqz v1, :cond_a

    .line 160
    iput-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->bannerText:Ljava/lang/String;

    goto :goto_a

    .line 164
    :pswitch_56
    if-eqz v1, :cond_a

    .line 165
    iput-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->buttonText:Ljava/lang/String;

    goto :goto_a

    .line 169
    :pswitch_5b
    if-eqz v1, :cond_a

    .line 170
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/vlingo/client/update/UpdateInfo2;->timeRetrieved:J

    goto :goto_a

    .line 174
    :pswitch_64
    if-eqz v1, :cond_a

    .line 175
    const-string v5, "true"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    :cond_76
    const/4 v5, 0x1

    :goto_77
    iput-boolean v5, p0, Lcom/vlingo/client/update/UpdateInfo2;->dismissed:Z

    goto :goto_a

    :cond_7a
    const/4 v5, 0x0

    goto :goto_77

    .line 132
    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_b
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_5b
        :pswitch_64
        :pswitch_51
        :pswitch_56
    .end packed-switch
.end method

.method public characters([C)V
    .registers 2
    .parameter "cData"

    .prologue
    .line 191
    return-void
.end method

.method public endDocument()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method

.method public endElement(II)V
    .registers 3
    .parameter "elementType"
    .parameter "elementStartPosition"

    .prologue
    .line 182
    return-void
.end method

.method public getBannerText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vlingo/client/update/UpdateInfo2;->bannerText:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vlingo/client/update/UpdateInfo2;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckInterval()J
    .registers 3

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/vlingo/client/update/UpdateInfo2;->checkInterval:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vlingo/client/update/UpdateInfo2;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vlingo/client/update/UpdateInfo2;->latestVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vlingo/client/update/UpdateInfo2;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vlingo/client/update/UpdateInfo2;->requiredVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeRetrieved()J
    .registers 3

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/vlingo/client/update/UpdateInfo2;->timeRetrieved:J

    return-wide v0
.end method

.method public isDismissed()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vlingo/client/update/UpdateInfo2;->dismissed:Z

    return v0
.end method

.method public isUpdateAvailable()Z
    .registers 3

    .prologue
    .line 47
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->latestVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vlingo/client/core/util/StringUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isUpdateRequired()Z
    .registers 3

    .prologue
    .line 51
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->requiredVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vlingo/client/core/util/StringUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setDismissed(Z)V
    .registers 2
    .parameter "dismissed"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/vlingo/client/update/UpdateInfo2;->dismissed:Z

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latest version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->latestVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", required "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/update/UpdateInfo2;->isUpdateRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->checkInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", banner-text "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->bannerText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", button-text "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dismissed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vlingo/client/update/UpdateInfo2;->dismissed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

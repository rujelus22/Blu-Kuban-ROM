.class public LSv;
.super Laso;
.source "AccountMetadataGDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Laso;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 59
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)LSE;
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v8, v0, :cond_52

    move v0, v1

    :goto_b
    invoke-static {v0}, LafQ;->b(Z)V

    .line 133
    invoke-direct {p0, p1}, LSv;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 135
    const-string v0, "http://schemas.google.com/docs/2007"

    const-string v3, "installedAppId"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v3, "http://schemas.google.com/docs/2007"

    const-string v4, "installedAppName"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    const-string v4, "http://schemas.google.com/docs/2007"

    const-string v5, "installedAppObjectType"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    const-string v5, "http://schemas.google.com/docs/2007"

    const-string v6, "installedAppSupportsCreate"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 140
    new-instance v6, LSE;

    invoke-direct {v6, v0, v3, v4, v5}, LSE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    :cond_42
    :goto_42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 144
    packed-switch v0, :pswitch_data_ec

    goto :goto_42

    .line 178
    :pswitch_4a
    new-instance v0, Lasn;

    const-string v1, "Premature end of document before </installedApp>"

    invoke-direct {v0, v1}, Lasn;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    move v0, v2

    .line 132
    goto :goto_b

    .line 146
    :pswitch_54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 148
    sget-object v4, Last;->i:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 149
    const-string v0, "http://schemas.google.com/docs/2007#product"

    sget-object v3, Last;->h:Ljava/lang/String;

    invoke-interface {p1, v9, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 150
    sget-object v0, Last;->l:Ljava/lang/String;

    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    sget-object v3, Last;->j:Ljava/lang/String;

    invoke-interface {p1, v9, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v6, v3, v0}, LSE;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 155
    :cond_82
    const-string v4, "http://schemas.google.com/docs/2007"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 156
    invoke-static {p1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v4, "installedAppPrimaryMimeType"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 158
    invoke-virtual {v6, v3}, LSE;->a(Ljava/lang/String;)V

    goto :goto_42

    .line 159
    :cond_9a
    const-string v4, "installedAppSecondaryMimeType"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 160
    invoke-virtual {v6, v3}, LSE;->b(Ljava/lang/String;)V

    goto :goto_42

    .line 161
    :cond_a6
    const-string v4, "installedAppPrimaryFileExtension"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 162
    invoke-virtual {v6, v3}, LSE;->c(Ljava/lang/String;)V

    goto :goto_42

    .line 163
    :cond_b2
    const-string v4, "installedAppSecondaryFileExtension"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 164
    invoke-virtual {v6, v3}, LSE;->d(Ljava/lang/String;)V

    goto :goto_42

    .line 166
    :cond_be
    const-string v4, "AccountMetadataGDataParser"

    const-string v5, "Unknown tag: %s with text %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 169
    :cond_d1
    const-string v4, "AccountMetadataGDataParser"

    const-string v5, "Unknwon tag: %s in namespace %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 173
    :pswitch_e4
    invoke-direct {p0, p1}, LSv;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 174
    return-object v6

    .line 144
    nop

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_54
        :pswitch_e4
    .end packed-switch
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 4
    .parameter

    .prologue
    .line 126
    const-string v0, "installedApp"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "http://schemas.google.com/docs/2007"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method protected a()LSp;
    .registers 2

    .prologue
    .line 63
    new-instance v0, LSp;

    invoke-direct {v0}, LSp;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic a()Lase;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, LSv;->a()LSp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lase;)V
    .registers 8
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, LSv;->a()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 71
    instance-of v0, p1, LSp;

    if-nez v0, :cond_10

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected AccountMetadataEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v0, p1

    .line 75
    check-cast v0, LSp;

    .line 76
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 79
    :try_start_1b
    const-string v4, "http://schemas.google.com/g/2005"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 80
    const-string v3, "quotaBytesTotal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 81
    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LSp;->a(J)V

    .line 123
    :cond_36
    :goto_36
    return-void

    .line 83
    :cond_37
    const-string v3, "quotaBytesUsed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 84
    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LSp;->b(J)V
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_4a} :catch_4b

    goto :goto_36

    .line 120
    :catch_4b
    move-exception v0

    .line 121
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 87
    :cond_65
    :try_start_65
    const-string v4, "http://schemas.google.com/docs/2007"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 88
    const-string v3, "quotaBytesUsedInTrash"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 89
    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LSp;->c(J)V

    goto :goto_36

    .line 91
    :cond_81
    const-string v3, "importFormat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string v3, "exportFormat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 92
    :cond_91
    const/4 v3, 0x0

    const-string v4, "source"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    const/4 v4, 0x0

    const-string v5, "target"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v4, "importFormat"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 97
    invoke-virtual {v0, v3, v1}, LSp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 99
    :cond_ab
    invoke-virtual {v0, v3, v1}, LSp;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 101
    :cond_af
    const-string v3, "featureName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 102
    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, LSp;->a(Ljava/lang/String;)V

    goto/16 :goto_36

    .line 104
    :cond_c0
    const-string v3, "maxUploadSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 105
    const/4 v2, 0x0

    const-string v3, "kind"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v2}, LkT;->a(Ljava/lang/String;)LkU;

    move-result-object v2

    .line 107
    invoke-static {v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 108
    invoke-virtual {v0, v2, v3, v4}, LSp;->a(LkU;J)V

    goto/16 :goto_36

    .line 109
    :cond_e0
    const-string v3, "largestChangestamp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 110
    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LSp;->a(I)V

    goto/16 :goto_36

    .line 112
    :cond_f8
    const-string v3, "remainingChangestamps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 113
    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LSp;->b(I)V

    goto/16 :goto_36

    .line 115
    :cond_110
    const-string v3, "installedApp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 116
    invoke-direct {p0, v1}, LSv;->a(Lorg/xmlpull/v1/XmlPullParser;)LSE;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, LSp;->a(LSE;)Z
    :try_end_11f
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_11f} :catch_4b

    goto/16 :goto_36
.end method

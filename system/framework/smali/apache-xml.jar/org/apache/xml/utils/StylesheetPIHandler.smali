.class public Lorg/apache/xml/utils/StylesheetPIHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "StylesheetPIHandler.java"


# instance fields
.field m_baseID:Ljava/lang/String;

.field m_charset:Ljava/lang/String;

.field m_media:Ljava/lang/String;

.field m_stylesheets:Ljava/util/Vector;

.field m_title:Ljava/lang/String;

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "baseID"
    .parameter "media"
    .parameter "title"
    .parameter "charset"

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    .line 103
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet()Ljavax/xml/transform/Source;
    .registers 5

    .prologue
    .line 118
    iget-object v2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 120
    .local v1, sz:I
    if-lez v1, :cond_13

    .line 122
    iget-object v2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/Source;

    .line 126
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getBaseId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    return-object v0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v13, "xml-stylesheet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_245

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, href:Ljava/lang/String;
    const/4 v12, 0x0

    .line 148
    .local v12, type:Ljava/lang/String;
    const/4 v9, 0x0

    .line 149
    .local v9, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 150
    .local v5, media:Ljava/lang/String;
    const/4 v2, 0x0

    .line 151
    .local v2, charset:Ljava/lang/String;
    const/4 v1, 0x0

    .line 152
    .local v1, alternate:Z
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v13, " \t=\n"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 153
    .local v11, tokenizer:Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .line 154
    .local v4, lookedAhead:Z
    const/4 v7, 0x0

    .line 156
    .local v7, source:Ljavax/xml/transform/Source;
    const-string v10, ""

    .line 157
    .local v10, token:Ljava/lang/String;
    :cond_1e
    :goto_1e
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_21b

    .line 159
    if-nez v4, :cond_78

    .line 160
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 163
    :goto_2a
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_48

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1e

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1e

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1e

    .line 167
    :cond_48
    move-object v6, v10

    .line 168
    .local v6, name:Ljava/lang/String;
    const-string v13, "type"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_86

    .line 170
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 171
    :goto_55
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_7a

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_73

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_73

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7a

    .line 173
    :cond_73
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_55

    .line 162
    .end local v6           #name:Ljava/lang/String;
    :cond_78
    const/4 v4, 0x0

    goto :goto_2a

    .line 174
    .restart local v6       #name:Ljava/lang/String;
    :cond_7a
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_1e

    .line 177
    :cond_86
    const-string v13, "href"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_125

    .line 179
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 180
    :goto_92
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_b5

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b0

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b0

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b5

    .line 182
    :cond_b0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_92

    .line 183
    :cond_b5
    move-object v3, v10

    .line 184
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_f3

    .line 186
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 195
    :goto_c0
    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f3

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_f3

    .line 197
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_f3

    .line 200
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 201
    const/4 v4, 0x1

    goto :goto_c0

    .line 209
    :cond_f3
    const/4 v13, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 213
    :try_start_fe
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v13, :cond_10c

    .line 215
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    iget-object v14, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    invoke-interface {v13, v3, v14}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v7

    goto/16 :goto_1e

    .line 219
    :cond_10c
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    invoke-static {v3, v13}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    new-instance v7, Ljavax/xml/transform/sax/SAXSource;

    .end local v7           #source:Ljavax/xml/transform/Source;
    new-instance v13, Lorg/xml/sax/InputSource;

    invoke-direct {v13, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v13}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V
    :try_end_11c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_fe .. :try_end_11c} :catch_11e

    .restart local v7       #source:Ljavax/xml/transform/Source;
    goto/16 :goto_1e

    .line 223
    .end local v7           #source:Ljavax/xml/transform/Source;
    :catch_11e
    move-exception v8

    .line 225
    .local v8, te:Ljavax/xml/transform/TransformerException;
    new-instance v13, Lorg/xml/sax/SAXException;

    invoke-direct {v13, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 228
    .end local v8           #te:Ljavax/xml/transform/TransformerException;
    .restart local v7       #source:Ljavax/xml/transform/Source;
    :cond_125
    const-string v13, "title"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_161

    .line 230
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 231
    :goto_131
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_154

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14f

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14f

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_154

    .line 233
    :cond_14f
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_131

    .line 234
    :cond_154
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1e

    .line 236
    :cond_161
    const-string v13, "media"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19d

    .line 238
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 239
    :goto_16d
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_190

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18b

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18b

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_190

    .line 241
    :cond_18b
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_16d

    .line 242
    :cond_190
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1e

    .line 244
    :cond_19d
    const-string v13, "charset"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d9

    .line 246
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 247
    :goto_1a9
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_1cc

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c7

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c7

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1cc

    .line 249
    :cond_1c7
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_1a9

    .line 250
    :cond_1cc
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1e

    .line 252
    :cond_1d9
    const-string v13, "alternate"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 254
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 255
    :goto_1e5
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_208

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_203

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_203

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_208

    .line 257
    :cond_203
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_1e5

    .line 258
    :cond_208
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "yes"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_1e

    .line 264
    .end local v6           #name:Ljava/lang/String;
    :cond_21b
    if-eqz v12, :cond_245

    const-string v13, "text/xsl"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_235

    const-string v13, "text/xml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_235

    const-string v13, "application/xml+xslt"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_245

    :cond_235
    if-eqz v3, :cond_245

    .line 268
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    if-eqz v13, :cond_246

    .line 270
    if-eqz v5, :cond_245

    .line 272
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_246

    .line 304
    .end local v1           #alternate:Z
    .end local v2           #charset:Ljava/lang/String;
    .end local v3           #href:Ljava/lang/String;
    .end local v4           #lookedAhead:Z
    .end local v5           #media:Ljava/lang/String;
    .end local v7           #source:Ljavax/xml/transform/Source;
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #token:Ljava/lang/String;
    .end local v11           #tokenizer:Ljava/util/StringTokenizer;
    .end local v12           #type:Ljava/lang/String;
    :cond_245
    :goto_245
    return-void

    .line 279
    .restart local v1       #alternate:Z
    .restart local v2       #charset:Ljava/lang/String;
    .restart local v3       #href:Ljava/lang/String;
    .restart local v4       #lookedAhead:Z
    .restart local v5       #media:Ljava/lang/String;
    .restart local v7       #source:Ljavax/xml/transform/Source;
    .restart local v9       #title:Ljava/lang/String;
    .restart local v10       #token:Ljava/lang/String;
    .restart local v11       #tokenizer:Ljava/util/StringTokenizer;
    .restart local v12       #type:Ljava/lang/String;
    :cond_246
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    if-eqz v13, :cond_254

    .line 281
    if-eqz v2, :cond_245

    .line 283
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_245

    .line 290
    :cond_254
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    if-eqz v13, :cond_262

    .line 292
    if-eqz v9, :cond_245

    .line 294
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_245

    .line 301
    :cond_262
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    invoke-virtual {v13, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_245
.end method

.method public setBaseId(Ljava/lang/String;)V
    .registers 2
    .parameter "baseId"

    .prologue
    .line 333
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 76
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lorg/apache/xml/utils/StopParseException;

    invoke-direct {v0}, Lorg/apache/xml/utils/StopParseException;-><init>()V

    throw v0
.end method

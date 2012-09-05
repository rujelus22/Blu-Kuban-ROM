.class public Lcom/android/exchange/adapter/GalParser;
.super Lcom/android/exchange/adapter/Parser;
.source "GalParser.java"


# instance fields
.field public mGalPictureData:Ljava/lang/String;

.field mGalResult:Lcom/android/exchange/provider/GalResult;

.field private mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .registers 4
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 67
    new-instance v0, Lcom/android/exchange/provider/GalResult;

    invoke-direct {v0}, Lcom/android/exchange/provider/GalResult;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalPictureData:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/android/exchange/adapter/GalParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 95
    return-void
.end method


# virtual methods
.method public getGalResult()Lcom/android/exchange/provider/GalResult;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    return-object v0
.end method

.method public parse()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x3c5

    if-eq v1, v2, :cond_f

    .line 113
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 117
    :cond_f
    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_32

    .line 119
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x3cd

    if-ne v1, v2, :cond_2e

    .line 129
    iget-object v1, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    iget-object v2, p0, Lcom/android/exchange/adapter/GalParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/exchange/provider/GalResult;->protocolVerison:D

    .line 133
    iget-object v1, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/GalParser;->parseResponse(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_f

    .line 137
    :cond_2e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_f

    .line 143
    :cond_32
    iget-object v1, p0, Lcom/android/exchange/adapter/GalParser;->mGalResult:Lcom/android/exchange/provider/GalResult;

    iget v1, v1, Lcom/android/exchange/provider/GalResult;->total:I

    if-lez v1, :cond_39

    const/4 v0, 0x1

    :cond_39
    return v0
.end method

.method public parsePicture()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v1, -0x1

    .line 363
    .local v1, status:I
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/adapter/GalParser;->mGalPictureData:Ljava/lang/String;

    .line 367
    :goto_4
    const/16 v2, 0x410

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2e

    .line 369
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x411

    if-ne v2, v3, :cond_18

    .line 371
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValueInt()I

    move-result v1

    goto :goto_4

    .line 379
    :cond_18
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x412

    if-ne v2, v3, :cond_2a

    .line 381
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValueOpaque()[B

    move-result-object v0

    .line 383
    .local v0, mGalPictureByteData:[B
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/GalParser;->mGalPictureData:Ljava/lang/String;

    goto :goto_4

    .line 387
    .end local v0           #mGalPictureByteData:[B
    :cond_2a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_4

    .line 393
    :cond_2e
    return-void
.end method

.method public parseProperties(Lcom/android/exchange/provider/GalResult;)V
    .registers 7
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v2, Lcom/android/exchange/provider/GalResult$GalData;

    invoke-direct {v2}, Lcom/android/exchange/provider/GalResult$GalData;-><init>()V

    .line 153
    .local v2, galData:Lcom/android/exchange/provider/GalResult$GalData;
    :goto_5
    const/16 v3, 0x3c7

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_96

    .line 155
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v3, :pswitch_data_9a

    .line 253
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_5

    .line 163
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, displayName:Ljava/lang/String;
    const-string v3, "displayName"

    invoke-virtual {v2, v3, v0}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-object v0, v2, Lcom/android/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    goto :goto_5

    .line 173
    .end local v0           #displayName:Ljava/lang/String;
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, emailAddress:Ljava/lang/String;
    const-string v3, "emailAddress"

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-object v1, v2, Lcom/android/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    goto :goto_5

    .line 183
    .end local v1           #emailAddress:Ljava/lang/String;
    :pswitch_2f
    const-string v3, "workPhone"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 189
    :pswitch_39
    const-string v3, "office"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 195
    :pswitch_43
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 201
    :pswitch_4d
    const-string v3, "company"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 207
    :pswitch_57
    const-string v3, "alias"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 213
    :pswitch_61
    const-string v3, "firstName"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 219
    :pswitch_6b
    const-string v3, "lastName"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 225
    :pswitch_75
    const-string v3, "homePhone"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 231
    :pswitch_7f
    const-string v3, "mobilePhone"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 241
    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->parsePicture()V

    .line 243
    const-string v3, "picture"

    iget-object v4, p0, Lcom/android/exchange/adapter/GalParser;->mGalPictureData:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 259
    :cond_96
    invoke-virtual {p1, v2}, Lcom/android/exchange/provider/GalResult;->addGalData(Lcom/android/exchange/provider/GalResult$GalData;)V

    .line 261
    return-void

    .line 155
    :pswitch_data_9a
    .packed-switch 0x405
        :pswitch_17
        :pswitch_2f
        :pswitch_39
        :pswitch_43
        :pswitch_4d
        :pswitch_57
        :pswitch_61
        :pswitch_6b
        :pswitch_75
        :pswitch_7f
        :pswitch_23
        :pswitch_8a
    .end packed-switch
.end method

.method public parseResponse(Lcom/android/exchange/provider/GalResult;)V
    .registers 4
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    :goto_0
    const/16 v0, 0x3cd

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 289
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x3c7

    if-ne v0, v1, :cond_13

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseStore(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 295
    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 301
    :cond_17
    return-void
.end method

.method public parseResult(Lcom/android/exchange/provider/GalResult;)V
    .registers 4
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    :goto_0
    const/16 v0, 0x3c7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 269
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x3cf

    if-ne v0, v1, :cond_13

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseProperties(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 275
    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 281
    :cond_17
    return-void
.end method

.method public parseStore(Lcom/android/exchange/provider/GalResult;)V
    .registers 6
    .parameter "galResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    :cond_0
    :goto_0
    const/16 v2, 0x3c7

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/GalParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4d

    .line 309
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3ce

    if-ne v2, v3, :cond_13

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/GalParser;->parseResult(Lcom/android/exchange/provider/GalResult;)V

    goto :goto_0

    .line 313
    :cond_13
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3cb

    if-ne v2, v3, :cond_3c

    .line 317
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, range:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 329
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, rangeNums:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 333
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/android/exchange/provider/GalResult;->startRange:I

    .line 335
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/android/exchange/provider/GalResult;->endRange:I

    goto :goto_0

    .line 341
    .end local v0           #range:Ljava/lang/String;
    .end local v1           #rangeNums:[Ljava/lang/String;
    :cond_3c
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3d0

    if-ne v2, v3, :cond_49

    .line 343
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getValueInt()I

    move-result v2

    iput v2, p1, Lcom/android/exchange/provider/GalResult;->total:I

    goto :goto_0

    .line 347
    :cond_49
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->skipTag()V

    goto :goto_0

    .line 353
    :cond_4d
    return-void
.end method

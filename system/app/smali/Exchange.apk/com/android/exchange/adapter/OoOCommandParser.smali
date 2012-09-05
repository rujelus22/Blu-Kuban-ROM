.class public Lcom/android/exchange/adapter/OoOCommandParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "OoOCommandParser.java"


# instance fields
.field private mEndDate:Ljava/util/Date;

.field private mExtKnownMsgEnable:I

.field private mExtMsgKnown:Ljava/lang/String;

.field private mExtMsgUnKnown:Ljava/lang/String;

.field private mExtUnKnownMsgEnable:I

.field private mInternalMsg:Ljava/lang/String;

.field private mInternalMsgEnable:I

.field private mOofState:I

.field private mResult:Z

.field private mStartDate:Ljava/util/Date;

.field oodl:Lcom/android/emailcommon/service/OoODataList;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 4
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    .line 90
    return-void
.end method

.method private checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "str"

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 102
    .local v0, arr:[C
    const/4 v1, 0x0

    .line 106
    .local v1, badCharsFound:Z
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_8
    if-ltz v2, :cond_1e

    .line 108
    aget-char v4, v0, v2

    const/16 v5, 0xd

    if-eq v4, v5, :cond_16

    aget-char v4, v0, v2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1e

    .line 110
    :cond_16
    const/16 v4, 0x20

    aput-char v4, v0, v2

    .line 112
    const/4 v1, 0x1

    .line 106
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 120
    :cond_1e
    if-eqz v1, :cond_2a

    .line 122
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 124
    .local v3, result:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 130
    .end local v3           #result:Ljava/lang/String;
    :goto_29
    return-object v3

    :cond_2a
    move-object v3, p1

    .line 128
    goto :goto_29
.end method

.method private convertUTCToLocal(Ljava/lang/String;)Ljava/util/Date;
    .registers 9
    .parameter "utc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 158
    const-wide/16 v3, 0x0

    .line 160
    .local v3, offsetCal:J
    const-string v5, "T"

    const-string v6, " "

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 162
    const-string v5, ".000Z"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 166
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, df:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 180
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 182
    .local v0, cal:Ljava/util/Calendar;
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v3, v5

    .line 184
    const/16 v5, 0x9

    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/OoOCommandParser;->getUTCAMPM(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 188
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 190
    .local v1, convertedDate:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 192
    return-object v1
.end method

.method private getUTCAMPM(Ljava/lang/String;)I
    .registers 10
    .parameter "utc"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 138
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, dateTime:[Ljava/lang/String;
    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 142
    .local v3, utcTime:[B
    aget-byte v6, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v2, v6, -0x30

    .line 144
    .local v2, hHH:I
    aget-byte v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v1, v6, -0x30

    .line 146
    .local v1, hH:I
    mul-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v1

    const/16 v7, 0xc

    if-ge v6, v7, :cond_2e

    .line 150
    :goto_2d
    return v4

    :cond_2e
    move v4, v5

    goto :goto_2d
.end method

.method private parseGetTag()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 308
    :cond_1
    :goto_1
    const/16 v0, 0x487

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    .line 310
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x48a

    if-ne v0, v1, :cond_1d

    .line 312
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    .line 314
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-nez v0, :cond_1d

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    .line 322
    :cond_1d
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x48b

    if-ne v0, v1, :cond_31

    .line 324
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-ne v0, v2, :cond_4f

    .line 328
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->convertUTCToLocal(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    .line 336
    :cond_31
    :goto_31
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x48c

    if-ne v0, v1, :cond_45

    .line 338
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-ne v0, v2, :cond_53

    .line 342
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->convertUTCToLocal(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    .line 350
    :cond_45
    :goto_45
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x48d

    if-ne v0, v1, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->parseOoOMessageTag()V

    goto :goto_1

    .line 332
    :cond_4f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    goto :goto_31

    .line 346
    :cond_53
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    goto :goto_45

    .line 358
    :cond_57
    return-void
.end method

.method private parseOoOMessageTag()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 200
    const/4 v3, 0x0

    .line 202
    .local v3, internal:Z
    const/4 v1, 0x0

    .line 204
    .local v1, extKnown:Z
    const/4 v2, 0x0

    .line 206
    .local v2, extUnKnown:Z
    const/4 v0, 0x0

    .line 210
    :cond_6
    :goto_6
    const/16 v5, 0x48d

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_94

    .line 214
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x48e

    if-ne v5, v6, :cond_17

    .line 216
    const/4 v3, 0x1

    goto :goto_6

    .line 218
    :cond_17
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x48f

    if-ne v5, v6, :cond_1f

    .line 220
    const/4 v1, 0x1

    goto :goto_6

    .line 222
    :cond_1f
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x490

    if-ne v5, v6, :cond_27

    .line 224
    const/4 v2, 0x1

    goto :goto_6

    .line 226
    :cond_27
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x491

    if-ne v5, v6, :cond_35

    .line 228
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v4

    .line 230
    .local v4, value:I
    if-ne v4, v7, :cond_6

    .line 232
    const/4 v0, 0x1

    .local v0, enabled:Z
    goto :goto_6

    .line 234
    .end local v0           #enabled:Z
    .end local v4           #value:I
    :cond_35
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x492

    if-ne v5, v6, :cond_89

    .line 236
    if-eqz v3, :cond_55

    .line 238
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    .line 240
    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    .line 242
    if-eqz v0, :cond_52

    .line 244
    iput v7, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    .line 250
    :goto_4f
    const/4 v3, 0x0

    move v0, v3

    .local v0, enabled:I
    goto :goto_6

    .line 248
    .end local v0           #enabled:I
    :cond_52
    iput v8, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    goto :goto_4f

    .line 252
    :cond_55
    if-eqz v1, :cond_6f

    .line 254
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    .line 256
    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    .line 258
    if-eqz v0, :cond_6c

    .line 260
    iput v7, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    .line 266
    :goto_69
    const/4 v1, 0x0

    move v0, v1

    .restart local v0       #enabled:I
    goto :goto_6

    .line 264
    .end local v0           #enabled:I
    :cond_6c
    iput v8, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    goto :goto_69

    .line 270
    :cond_6f
    if-eqz v2, :cond_6

    .line 272
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    .line 274
    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/OoOCommandParser;->checkForBadCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    .line 276
    if-eqz v0, :cond_86

    .line 278
    iput v7, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    .line 284
    :goto_83
    const/4 v2, 0x0

    move v0, v2

    .restart local v0       #enabled:I
    goto :goto_6

    .line 282
    .end local v0           #enabled:I
    :cond_86
    iput v8, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    goto :goto_83

    .line 292
    :cond_89
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x493

    if-ne v5, v6, :cond_6

    .line 294
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValue()Ljava/lang/String;

    goto/16 :goto_6

    .line 300
    :cond_94
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    return-void
.end method

.method public commit()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    return-void
.end method

.method public getParsedData()Lcom/android/emailcommon/service/OoODataList;
    .registers 2

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    if-eqz v0, :cond_7

    .line 634
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    .line 636
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public parse()Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v9, 0x0

    .line 368
    .local v9, settingsStatus:Z
    const/4 v8, 0x0

    .line 372
    .local v8, oofStatus:Z
    new-instance v0, Lcom/android/emailcommon/service/OoODataList;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OoODataList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x485

    if-eq v0, v1, :cond_18

    .line 378
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 380
    :cond_18
    :goto_18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/OoOCommandParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17b

    .line 384
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_32

    .line 386
    invoke-virtual {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->getValueInt()I

    move-result v10

    .line 388
    .local v10, value:I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_49

    .line 390
    if-nez v9, :cond_40

    if-nez v8, :cond_40

    .line 392
    const/4 v9, 0x1

    .line 420
    .end local v10           #value:I
    :cond_32
    :goto_32
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x496

    if-ne v0, v1, :cond_50

    .line 424
    const-string v0, "OoOCommandParser"

    const-string v1, "Hurray! DeviceInformation was set successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 394
    .restart local v10       #value:I
    :cond_40
    if-eqz v9, :cond_32

    if-nez v8, :cond_32

    .line 396
    const/4 v8, 0x1

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    goto :goto_32

    .line 406
    :cond_49
    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/OoOCommandParser;->isProvisioningStatus(I)Z

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    goto :goto_32

    .line 432
    .end local v10           #value:I
    :cond_50
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x487

    if-ne v0, v1, :cond_18

    .line 436
    :try_start_56
    invoke-direct {p0}, Lcom/android/exchange/adapter/OoOCommandParser;->parseGetTag()V
    :try_end_59
    .catch Ljava/text/ParseException; {:try_start_56 .. :try_end_59} :catch_8e

    .line 444
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    if-nez v0, :cond_b9

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    .line 450
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    if-eqz v0, :cond_97

    .line 452
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 462
    :goto_6f
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    if-eqz v0, :cond_a2

    .line 464
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 474
    :goto_7e
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    if-eqz v0, :cond_ad

    .line 476
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_18

    .line 438
    :catch_8e
    move-exception v7

    .line 440
    .local v7, e:Ljava/text/ParseException;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "date_parse"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    .end local v7           #e:Ljava/text/ParseException;
    :cond_97
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_6f

    .line 470
    :cond_a2
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_7e

    .line 482
    :cond_ad
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto/16 :goto_18

    .line 488
    :cond_b9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    .line 490
    iget v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mOofState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12a

    .line 494
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    if-eqz v0, :cond_fc

    .line 496
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 510
    :goto_d4
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    if-eqz v0, :cond_10b

    .line 512
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 526
    :goto_e7
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    if-eqz v0, :cond_11a

    .line 528
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto/16 :goto_18

    .line 504
    :cond_fc
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_d4

    .line 520
    :cond_10b
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_e7

    .line 536
    :cond_11a
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto/16 :goto_18

    .line 544
    :cond_12a
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    if-eqz v0, :cond_159

    .line 546
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 556
    :goto_139
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    if-eqz v0, :cond_164

    .line 558
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 568
    :goto_148
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    if-eqz v0, :cond_16f

    .line 570
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    iget-object v4, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtMsgUnKnown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto/16 :goto_18

    .line 552
    :cond_159
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mInternalMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_139

    .line 564
    :cond_164
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x5

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_148

    .line 576
    :cond_16f
    iget-object v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->oodl:Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x6

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mExtUnKnownMsgEnable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto/16 :goto_18

    .line 588
    :cond_17b
    if-eqz v9, :cond_183

    if-eqz v8, :cond_183

    const/4 v0, 0x1

    :goto_180
    iput-boolean v0, p0, Lcom/android/exchange/adapter/OoOCommandParser;->mResult:Z

    return v0

    :cond_183
    const/4 v0, 0x0

    goto :goto_180
.end method

.method public responsesParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    return-void
.end method

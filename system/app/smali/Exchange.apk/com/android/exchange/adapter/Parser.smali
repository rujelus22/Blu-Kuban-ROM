.class public abstract Lcom/android/exchange/adapter/Parser;
.super Ljava/util/Observable;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/Parser$EasParserException;,
        Lcom/android/exchange/adapter/Parser$EodException;,
        Lcom/android/exchange/adapter/Parser$EofException;
    }
.end annotation


# static fields
.field private static tagTables:[[Ljava/lang/String;


# instance fields
.field private capture:Z

.field captureFile:Ljava/io/BufferedOutputStream;

.field private capturebytes:Z

.field private depth:I

.field public endTag:I

.field private in:Ljava/io/InputStream;

.field private logTag:Ljava/lang/String;

.field private logging:Z

.field public name:Ljava/lang/String;

.field private nameArray:[Ljava/lang/String;

.field private nextId:I

.field private noContent:Z

.field public num:I

.field public opaqueData:[B

.field public page:I

.field public startTag:I

.field private startTagArray:[I

.field public tag:I

.field private tagTable:[Ljava/lang/String;

.field public text:Ljava/lang/String;

.field tid:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 221
    const/16 v0, 0x96

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/adapter/Parser;Z)V
    .registers 4
    .parameter "parse"
    .parameter "resumeStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Parser;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;Z)V

    .line 418
    iget v0, p1, Lcom/android/exchange/adapter/Parser;->num:I

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 419
    iget v0, p1, Lcom/android/exchange/adapter/Parser;->page:I

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 420
    iget v0, p1, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 421
    iget v0, p1, Lcom/android/exchange/adapter/Parser;->tag:I

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 422
    iget-object v0, p1, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 423
    iget v0, p1, Lcom/android/exchange/adapter/Parser;->endTag:I

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 424
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    .line 425
    iget-object v0, p1, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    .line 427
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    iput-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 428
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;Z)V

    .line 396
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    iput-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 398
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 9
    .parameter "in"
    .parameter "resumeStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v5, -0x8000

    const/4 v4, 0x0

    .line 400
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 145
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 149
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 153
    const-string v3, "EAS Parser"

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 159
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    .line 163
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    .line 209
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 227
    const/16 v3, 0x20

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    .line 235
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    .line 247
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 371
    sget-object v2, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    .line 373
    .local v2, pages:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_26
    array-length v3, v2

    if-ge v0, v3, :cond_35

    .line 375
    aget-object v1, v2, v0

    .line 377
    .local v1, page:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_32

    .line 379
    sget-object v3, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 373
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 403
    .end local v1           #page:[Ljava/lang/String;
    :cond_35
    if-nez p2, :cond_49

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Parser;->setInput(Ljava/io/InputStream;)V

    .line 408
    :goto_3a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/exchange/adapter/Parser;->tid:J

    .line 410
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 411
    return-void

    .line 407
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Parser;->resetInput(Ljava/io/InputStream;)V

    goto :goto_3a
.end method

.method private final getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I
    .registers 10
    .parameter "asInt"
    .parameter "os"
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1330
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;J)I

    move-result v0

    return v0
.end method

.method private final getNext(ZLjava/io/OutputStream;Ljava/util/Observer;J)I
    .registers 16
    .parameter "asInt"
    .parameter "os"
    .parameter "observer"
    .parameter "estimatedSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1346
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 1348
    .local v5, savedEndTag:I
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4d

    .line 1350
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 1358
    :goto_d
    iget-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v7, :cond_72

    .line 1360
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1362
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 1364
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 1368
    iget-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v7, :cond_4a

    .line 1372
    :try_start_1d
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    array-length v7, v7

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v8, v8, -0x5

    if-le v7, v8, :cond_52

    .line 1374
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v8, v8, -0x5

    aget-object v6, v7, v8

    .line 1376
    .local v6, tempname:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " />"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4a} :catch_6b

    .line 1392
    .end local v6           #tempname:Ljava/lang/String;
    :cond_4a
    :goto_4a
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1606
    :goto_4c
    return v7

    .line 1354
    :cond_4d
    const/high16 v7, -0x8000

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_d

    .line 1380
    :cond_52
    :try_start_52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noContent : new Tag - check Tags.java!!! Added tag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6a} :catch_6b

    goto :goto_4a

    .line 1382
    :catch_6b
    move-exception v2

    .line 1384
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "exception occurred while getting next TAG"

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_4a

    .line 1396
    .end local v2           #e:Ljava/lang/Exception;
    :cond_72
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1398
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 1400
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v3

    .line 1402
    .local v3, id:I
    :goto_7c
    if-nez v3, :cond_95

    .line 1404
    const/high16 v7, -0x8000

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 1408
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v4

    .line 1412
    .local v4, pg:I
    shl-int/lit8 v7, v4, 0x6

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 1416
    sget-object v7, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aget-object v7, v7, v4

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 1418
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v3

    .line 1420
    goto :goto_7c

    .line 1422
    .end local v4           #pg:I
    :cond_95
    const/high16 v7, -0x8000

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 1424
    sparse-switch v3, :sswitch_data_1b6

    .line 1562
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1566
    and-int/lit8 v7, v3, 0x3f

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 1570
    and-int/lit8 v7, v3, 0x40

    if-nez v7, :cond_190

    const/4 v7, 0x1

    :goto_a8
    iput-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 1572
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 1574
    iget-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v7, :cond_cf

    .line 1578
    :try_start_b4
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    array-length v7, v7

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v8, v8, -0x5

    if-le v7, v8, :cond_193

    .line 1580
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v8, v8, -0x5

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 1584
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget-object v9, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    aput-object v9, v7, v8
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_cf} :catch_1ad

    .line 1600
    :cond_cf
    :goto_cf
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget v9, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    aput v9, v7, v8

    .line 1606
    :cond_d7
    :goto_d7
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto/16 :goto_4c

    .line 1430
    :sswitch_db
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_d7

    .line 1438
    :sswitch_df
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1440
    iget-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v7, :cond_ee

    .line 1442
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 1450
    :cond_ee
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget v7, v7, v8

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    goto :goto_d7

    .line 1458
    :sswitch_f9
    if-nez p2, :cond_150

    .line 1462
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1464
    if-eqz p1, :cond_149

    .line 1466
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineInt()I

    move-result v7

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 1488
    :goto_106
    iget-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v7, :cond_d7

    .line 1492
    :try_start_10a
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    array-length v7, v7

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v8, v8, -0x5

    if-le v7, v8, :cond_15d

    .line 1494
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v8, v8, -0x5

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 1496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_15a

    iget v7, p0, Lcom/android/exchange/adapter/Parser;->num:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :goto_136
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_141} :catch_142

    goto :goto_d7

    .line 1502
    :catch_142
    move-exception v2

    .line 1504
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v7, "exception occurred while getting next TAG"

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_d7

    .line 1470
    .end local v2           #e:Ljava/lang/Exception;
    :cond_149
    invoke-direct {p0, p4, p5}, Lcom/android/exchange/adapter/Parser;->readInlineString(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_106

    .line 1476
    :cond_150
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1478
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/exchange/adapter/Parser;->readInlineStream(Ljava/io/OutputStream;Ljava/util/Observer;J)I

    move-result v7

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->num:I

    goto :goto_106

    .line 1496
    :cond_15a
    :try_start_15a
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_136

    .line 1500
    :cond_15d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STR_I : new Tag - check Tags.java!!! Added tag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_175} :catch_142

    goto/16 :goto_d7

    .line 1520
    :sswitch_177
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    move-result v1

    .line 1522
    .local v1, count:I
    new-array v0, v1, [B

    .line 1526
    .local v0, buf:[B
    :goto_17d
    if-lez v1, :cond_189

    .line 1528
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    array-length v8, v0

    sub-int/2addr v8, v1

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    sub-int/2addr v1, v7

    goto :goto_17d

    .line 1534
    :cond_189
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1540
    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->opaqueData:[B

    goto/16 :goto_d7

    .line 1570
    .end local v0           #buf:[B
    .end local v1           #count:I
    :cond_190
    const/4 v7, 0x0

    goto/16 :goto_a8

    .line 1588
    :cond_193
    :try_start_193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default : new Tag - check Tags.java!!! Added tag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1ab} :catch_1ad

    goto/16 :goto_cf

    .line 1590
    :catch_1ad
    move-exception v2

    .line 1592
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v7, "exception occurred while getting next TAG"

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto/16 :goto_cf

    .line 1424
    nop

    :sswitch_data_1b6
    .sparse-switch
        -0x1 -> :sswitch_db
        0x1 -> :sswitch_df
        0x3 -> :sswitch_f9
        0xc3 -> :sswitch_177
    .end sparse-switch
.end method

.method private final getNextStream(ZJ)I
    .registers 14
    .parameter "asInt"
    .parameter "estimateSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1616
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 1618
    .local v5, savedEndTag:I
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4d

    .line 1620
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 1630
    :goto_d
    iget-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v7, :cond_72

    .line 1632
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1634
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 1636
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 1640
    iget-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v7, :cond_4a

    .line 1644
    :try_start_1d
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    array-length v7, v7

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v8, v8, -0x5

    if-le v7, v8, :cond_52

    .line 1646
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v8, v8, -0x5

    aget-object v6, v7, v8

    .line 1648
    .local v6, tempname:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " />"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4a} :catch_6b

    .line 1666
    .end local v6           #tempname:Ljava/lang/String;
    :cond_4a
    :goto_4a
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1804
    :goto_4c
    return v7

    .line 1624
    :cond_4d
    const/high16 v7, -0x8000

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_d

    .line 1652
    :cond_52
    :try_start_52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNextStream() : new Tag - check Tags.java!!! Added tag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6a} :catch_6b

    goto :goto_4a

    .line 1656
    :catch_6b
    move-exception v2

    .line 1658
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "exception occurred while getting next TAG"

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_4a

    .line 1672
    .end local v2           #e:Ljava/lang/Exception;
    :cond_72
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1674
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 1678
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v3

    .line 1680
    .local v3, id:I
    :goto_7c
    if-nez v3, :cond_95

    .line 1682
    const/high16 v7, -0x8000

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 1686
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v4

    .line 1690
    .local v4, pg:I
    shl-int/lit8 v7, v4, 0x6

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 1694
    sget-object v7, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aget-object v7, v7, v4

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 1696
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v3

    .line 1698
    goto :goto_7c

    .line 1700
    .end local v4           #pg:I
    :cond_95
    const/high16 v7, -0x8000

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 1704
    sparse-switch v3, :sswitch_data_102

    .line 1782
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1786
    and-int/lit8 v7, v3, 0x3f

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 1790
    and-int/lit8 v7, v3, 0x40

    if-nez v7, :cond_ff

    const/4 v7, 0x1

    :goto_a8
    iput-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 1792
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 1796
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget v9, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    aput v9, v7, v8

    .line 1804
    :goto_b8
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_4c

    .line 1710
    :sswitch_bb
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_b8

    .line 1720
    :sswitch_bf
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1722
    iget-boolean v7, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v7, :cond_ce

    .line 1724
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 1732
    :cond_ce
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget v7, v7, v8

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    goto :goto_b8

    .line 1742
    :sswitch_d9
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1744
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/Parser;->readInlineBytes(J)V

    goto :goto_b8

    .line 1756
    :sswitch_e0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    move-result v1

    .line 1758
    .local v1, count:I
    new-array v0, v1, [B

    .line 1762
    .local v0, buf:[B
    :goto_e6
    if-lez v1, :cond_f2

    .line 1764
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    array-length v8, v0

    sub-int/2addr v8, v1

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    sub-int/2addr v1, v7

    goto :goto_e6

    .line 1770
    :cond_f2
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 1772
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_b8

    .line 1790
    .end local v0           #buf:[B
    .end local v1           #count:I
    :cond_ff
    const/4 v7, 0x0

    goto :goto_a8

    .line 1704
    nop

    :sswitch_data_102
    .sparse-switch
        -0x1 -> :sswitch_bb
        0x1 -> :sswitch_bf
        0x3 -> :sswitch_d9
        0xc3 -> :sswitch_e0
    .end sparse-switch
.end method

.method private nextId()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1984
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_e

    .line 1986
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 1990
    :cond_e
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    return v0
.end method

.method private readByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1998
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 2000
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 2002
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 2006
    :cond_f
    return v0
.end method

.method private readInlineBytes(J)V
    .registers 23
    .parameter "estimatedSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1846
    const-wide/16 v6, 0x0

    .line 1848
    .local v6, byteCount:J
    const v4, 0x8000

    .line 1850
    .local v4, TEMP_BUFF_SIZE:I
    const/16 v3, 0x400

    .line 1852
    .local v3, ONE_KB:I
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const v14, 0x8000

    invoke-direct {v13, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1854
    .local v13, os:Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    .line 1860
    .local v11, isEOF:Z
    const/16 v2, 0x4000

    .local v2, MAX_BODY_CHUNK_SIZE:I
    :goto_12
    const/16 v14, 0x80

    if-le v2, v14, :cond_ad

    if-nez v11, :cond_ad

    .line 1862
    new-array v5, v2, [B

    .line 1864
    .local v5, buffer:[B
    :goto_1a
    const-wide/16 v14, 0x1

    sub-long v16, p1, v6

    int-to-long v0, v2

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    cmp-long v14, v14, v16

    if-gez v14, :cond_79

    .line 1866
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 1868
    .local v9, count:I
    const/4 v14, -0x1

    if-ne v9, v14, :cond_7c

    .line 1870
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  EOF reached while "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "chunk reading of body  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Estimated Size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", total read : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    const/4 v11, 0x1

    .line 1860
    .end local v9           #count:I
    :cond_79
    div-int/lit8 v2, v2, 0x2

    goto :goto_12

    .line 1884
    .restart local v9       #count:I
    :cond_7c
    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1888
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    const v15, 0x8000

    if-lt v14, v15, :cond_a9

    .line 1890
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    if-eqz v14, :cond_a9

    .line 1892
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1894
    .local v8, bytes:[B
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    add-int/lit16 v12, v14, -0x400

    .line 1896
    .local v12, offset:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v15, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1898
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1900
    array-length v14, v8

    sub-int/2addr v14, v12

    invoke-virtual {v13, v8, v12, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1908
    .end local v8           #bytes:[B
    .end local v12           #offset:I
    :cond_a9
    int-to-long v14, v9

    add-long/2addr v6, v14

    .line 1910
    goto/16 :goto_1a

    .line 1916
    .end local v5           #buffer:[B
    .end local v9           #count:I
    :cond_ad
    new-instance v14, Ljava/io/SequenceInputStream;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 1920
    :cond_c5
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->readStreamIntoFile()I

    move-result v10

    .line 1922
    .local v10, i:I
    if-nez v10, :cond_cc

    .line 1934
    return-void

    .line 1926
    :cond_cc
    const/4 v14, -0x1

    if-ne v10, v14, :cond_c5

    .line 1928
    new-instance v14, Lcom/android/exchange/adapter/Parser$EofException;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v14
.end method

.method private readInlineInt()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2030
    const/4 v3, 0x0

    .line 2034
    .local v3, result:I
    const/4 v2, 0x1

    .line 2036
    .local v2, multiplier:I
    const/4 v0, 0x1

    .line 2042
    .local v0, beginning:Z
    :goto_3
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v1

    .line 2048
    .local v1, i:I
    if-nez v1, :cond_c

    .line 2050
    mul-int v4, v2, v3

    return v4

    .line 2054
    :cond_c
    if-eqz v0, :cond_15

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_15

    .line 2056
    const/4 v2, -0x1

    .line 2058
    const/4 v0, 0x0

    .line 2060
    goto :goto_3

    .line 2064
    :cond_15
    const/4 v0, 0x0

    .line 2070
    const/16 v4, 0x30

    if-lt v1, v4, :cond_25

    const/16 v4, 0x39

    if-gt v1, v4, :cond_25

    .line 2072
    mul-int/lit8 v4, v3, 0xa

    add-int/lit8 v5, v1, -0x30

    add-int v3, v4, v5

    goto :goto_3

    .line 2076
    :cond_25
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Non integer"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readInlineStream(Ljava/io/OutputStream;Ljava/util/Observer;J)I
    .registers 27
    .parameter "os"
    .parameter "observer"
    .parameter "estimatedSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2222
    const-wide/16 v14, 0x0

    .line 2224
    .local v14, totalRead:J
    const/16 v2, 0x40

    .line 2228
    .local v2, BUF_SIZE:I
    if-eqz p1, :cond_17d

    .line 2232
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v16, 0x40

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2236
    .local v5, bufStream:Ljava/io/ByteArrayOutputStream;
    if-eqz p2, :cond_18

    .line 2238
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Parser;->addObserver(Ljava/util/Observer;)V

    .line 2244
    :cond_18
    const-wide/16 v7, 0x0

    .line 2248
    .local v7, byteCount:J
    const/16 v3, 0x4000

    .local v3, MAX_ATT_CHUNK_SIZE:I
    :goto_1c
    const/16 v16, 0x80

    move/from16 v0, v16

    if-le v3, v0, :cond_d9

    .line 2250
    new-array v6, v3, [B

    .line 2252
    .local v6, buffer:[B
    :goto_24
    const-wide/16 v16, 0x1

    sub-long v18, p3, v7

    int-to-long v0, v3

    move-wide/from16 v20, v0

    div-long v18, v18, v20

    cmp-long v16, v16, v18

    if-gez v16, :cond_d5

    .line 2254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .line 2256
    .local v10, count:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_54

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, " Exception! EOF reached while chunk reading of Attachment"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    new-instance v16, Ljava/io/EOFException;

    invoke-direct/range {v16 .. v16}, Ljava/io/EOFException;-><init>()V

    throw v16

    .line 2264
    :cond_54
    rem-int/lit8 v16, v10, 0x4

    rsub-int/lit8 v13, v16, 0x4

    .line 2266
    .local v13, paddingBytes:I
    if-lez v13, :cond_aa

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v13, v0, :cond_aa

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 2270
    .local v11, count2:I
    if-eq v11, v13, :cond_a9

    .line 2272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, " Exception! Not able to read extra padding bytes for base64 decoding"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Required Padding bytes : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Actual read padding bytes : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    new-instance v16, Ljava/io/EOFException;

    invoke-direct/range {v16 .. v16}, Ljava/io/EOFException;-><init>()V

    throw v16

    .line 2280
    :cond_a9
    add-int/2addr v10, v11

    .line 2286
    .end local v11           #count2:I
    :cond_aa
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v6, v0, v10, v1}, Landroid/util/Base64;->decode([BIII)[B

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2288
    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v7, v7, v16

    .line 2290
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->setChanged()V

    .line 2292
    new-instance v16, Ljava/lang/Long;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Parser;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 2248
    .end local v10           #count:I
    .end local v13           #paddingBytes:I
    :cond_d5
    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_1c

    .line 2308
    .end local v6           #buffer:[B
    :cond_d9
    const/4 v12, 0x0

    .line 2310
    .local v12, currentByte:I
    const/4 v4, 0x0

    .line 2312
    .local v4, bufRead:I
    const/4 v9, 0x0

    .line 2320
    .local v9, chunkRead:I
    :cond_dc
    :goto_dc
    :try_start_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 2322
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v12, v0, :cond_ee

    if-nez v12, :cond_124

    .line 2326
    :cond_ee
    if-lez v4, :cond_101

    .line 2328
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_101
    .catchall {:try_start_dc .. :try_end_101} :catchall_15c

    .line 2394
    :cond_101
    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 2398
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->setChanged()V

    .line 2400
    new-instance v16, Ljava/lang/Long;

    add-long v17, v7, v14

    invoke-direct/range {v16 .. v18}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Parser;->notifyObservers(Ljava/lang/Object;)V

    .line 2402
    if-eqz p2, :cond_120

    .line 2404
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Parser;->deleteObserver(Ljava/util/Observer;)V

    .line 2424
    .end local v3           #MAX_ATT_CHUNK_SIZE:I
    .end local v4           #bufRead:I
    .end local v5           #bufStream:Ljava/io/ByteArrayOutputStream;
    .end local v7           #byteCount:J
    .end local v9           #chunkRead:I
    .end local v12           #currentByte:I
    :cond_120
    :goto_120
    long-to-int v0, v14

    move/from16 v16, v0

    return v16

    .line 2340
    .restart local v3       #MAX_ATT_CHUNK_SIZE:I
    .restart local v4       #bufRead:I
    .restart local v5       #bufStream:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #byteCount:J
    .restart local v9       #chunkRead:I
    .restart local v12       #currentByte:I
    :cond_124
    :try_start_124
    invoke-virtual {v5, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2342
    add-int/lit8 v4, v4, 0x1

    .line 2346
    const/16 v16, 0x40

    move/from16 v0, v16

    if-ne v4, v0, :cond_dc

    .line 2348
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2350
    add-int/2addr v9, v4

    .line 2352
    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 2354
    const/4 v4, 0x0

    .line 2358
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->setChanged()V

    .line 2360
    new-instance v16, Ljava/lang/Long;

    add-long v17, v7, v14

    invoke-direct/range {v16 .. v18}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Parser;->notifyObservers(Ljava/lang/Object;)V

    .line 2370
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_15b
    .catchall {:try_start_124 .. :try_end_15b} :catchall_15c

    goto :goto_dc

    .line 2394
    :catchall_15c
    move-exception v16

    int-to-long v0, v4

    move-wide/from16 v17, v0

    add-long v14, v14, v17

    .line 2398
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->setChanged()V

    .line 2400
    new-instance v17, Ljava/lang/Long;

    add-long v18, v7, v14

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Parser;->notifyObservers(Ljava/lang/Object;)V

    .line 2402
    if-eqz p2, :cond_17c

    .line 2404
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Parser;->deleteObserver(Ljava/util/Observer;)V

    :cond_17c
    throw v16

    .line 2414
    .end local v3           #MAX_ATT_CHUNK_SIZE:I
    .end local v4           #bufRead:I
    .end local v5           #bufStream:Ljava/io/ByteArrayOutputStream;
    .end local v7           #byteCount:J
    .end local v9           #chunkRead:I
    .end local v12           #currentByte:I
    :cond_17d
    const-wide/16 v14, 0x0

    goto :goto_120
.end method

.method private readInlineString(J)Ljava/lang/String;
    .registers 8
    .parameter "estimatedSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2142
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x2000

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2148
    .local v0, outputStream:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 2150
    .local v1, read_char:I
    const/4 v3, 0x0

    .local v3, strCount:I
    :goto_9
    const/high16 v4, 0x10

    if-ge v3, v4, :cond_15

    .line 2152
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 2154
    if-nez v1, :cond_1e

    .line 2172
    :cond_15
    :goto_15
    if-eqz v1, :cond_2d

    .line 2174
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_15

    .line 2158
    :cond_1e
    const/4 v4, -0x1

    if-ne v1, v4, :cond_27

    .line 2160
    new-instance v4, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v4, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v4

    .line 2164
    :cond_27
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2150
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2178
    :cond_2d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2180
    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2182
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2184
    return-object v2
.end method

.method private readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2088
    const/4 v1, 0x0

    .line 2094
    .local v1, result:I
    :cond_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 2096
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 2098
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_1

    .line 2100
    return v1
.end method

.method private readStreamIntoFile()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1822
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1824
    .local v0, i:I
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    if-eqz v1, :cond_f

    .line 1826
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 1830
    :cond_f
    return v0
.end method


# virtual methods
.method public captureBytesOff()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 567
    :try_start_1
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 569
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 571
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f

    .line 583
    :goto_e
    return-void

    .line 575
    :catch_f
    move-exception v0

    .line 577
    .local v0, ioe:Ljava/io/IOException;
    iput-boolean v2, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    goto :goto_e
.end method

.method public captureBytesOn(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "file"

    .prologue
    .line 537
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    .line 543
    :try_start_3
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_10

    .line 557
    :goto_f
    return-void

    .line 547
    :catch_10
    move-exception v0

    .line 551
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_f
.end method

.method public crypt([B)Ljava/lang/String;
    .registers 7
    .parameter "dataOP"

    .prologue
    .line 2458
    if-eqz p1, :cond_5

    array-length v3, p1

    if-nez v3, :cond_d

    .line 2460
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Byte array to encript cannot be null or zero length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2482
    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 2484
    .local v0, hexString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    array-length v3, p1

    if-ge v1, v3, :cond_71

    .line 2486
    aget-byte v3, p1, v1

    if-ltz v3, :cond_57

    .line 2488
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_41

    .line 2490
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2492
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2494
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2496
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2498
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2484
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2502
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :cond_41
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2504
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2506
    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2508
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2510
    goto :goto_3e

    .line 2514
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :cond_57
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2516
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2518
    aget-byte v3, p1, v1

    mul-int/lit8 v3, v3, -0x1

    or-int/lit16 v3, v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2520
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 2530
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :cond_71
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getValue(Ljava/io/OutputStream;Ljava/util/Observer;J)I
    .registers 14
    .parameter "os"
    .parameter "observer"
    .parameter "estimateSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 853
    const/4 v6, -0x1

    .local v6, ret_value:I
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 861
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;J)I

    .line 863
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v0, v7, :cond_10

    .line 865
    const/4 v6, 0x0

    .line 875
    :cond_10
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 881
    invoke-direct {p0, v1, v8, v8}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 885
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v0, v7, :cond_21

    .line 887
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No END found!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_21
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 895
    return v6
.end method

.method public getValue()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/adapter/Parser;->getValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(J)Ljava/lang/String;
    .registers 12
    .parameter "estimatedSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 623
    move-object v0, p0

    move-object v3, v2

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;J)I

    .line 629
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v0, v8, :cond_5b

    .line 631
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v0, :cond_38

    .line 635
    :try_start_11
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v1, v1, -0x5

    if-le v0, v1, :cond_3b

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No value for tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v2, v2, -0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_38} :catch_54

    .line 651
    :cond_38
    :goto_38
    const-string v7, ""

    .line 673
    :goto_3a
    return-object v7

    .line 641
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getValue() : new Tag - check Tags.java!!! Added tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_53} :catch_54

    goto :goto_38

    .line 643
    :catch_54
    move-exception v6

    .line 645
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "exception occurred while getting next TAG"

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_38

    .line 657
    .end local v6           #e:Ljava/lang/Exception;
    :cond_5b
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 661
    .local v7, val:Ljava/lang/String;
    invoke-direct {p0, v1, v2, v2}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 665
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v0, v8, :cond_6c

    .line 667
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No END found!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_6c
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_3a
.end method

.method public getValueInt()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 765
    const/4 v2, 0x1

    invoke-direct {p0, v2, v3, v3}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 767
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v2, v4, :cond_d

    move v0, v1

    .line 791
    :goto_c
    return v0

    .line 775
    :cond_d
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 779
    .local v0, val:I
    invoke-direct {p0, v1, v3, v3}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 783
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v4, :cond_1e

    .line 785
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_1e
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_c
.end method

.method public getValueIntForReminder()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 801
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 803
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v3, :cond_c

    .line 805
    const/4 v0, -0x1

    .line 827
    :goto_b
    return v0

    .line 811
    :cond_c
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 815
    .local v0, val:I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 819
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_1e

    .line 821
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 825
    :cond_1e
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_b
.end method

.method public getValueOpaque()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 685
    invoke-direct {p0, v4, v2, v2}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 693
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v3, v5, :cond_57

    .line 695
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v3, :cond_35

    .line 699
    :try_start_e
    iget-object v3, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    array-length v3, v3

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v4, v4, -0x5

    if-le v3, v4, :cond_37

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No value for tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v5, v5, -0x5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    :cond_35
    :goto_35
    move-object v1, v2

    .line 739
    :goto_36
    return-object v1

    .line 705
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValueOpaque() : new Tag - check Tags.java!!! Added tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4f} :catch_50

    goto :goto_35

    .line 709
    :catch_50
    move-exception v0

    .line 711
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "exception occurred while getting next TAG"

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_35

    .line 723
    .end local v0           #e:Ljava/lang/Exception;
    :cond_57
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->opaqueData:[B

    .line 727
    .local v1, val:[B
    invoke-direct {p0, v4, v2, v2}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 731
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v2, v5, :cond_68

    .line 733
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No END found!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 737
    :cond_68
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_36
.end method

.method public hasContent()Z
    .registers 2

    .prologue
    .line 2442
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method log(Ljava/lang/String;)V
    .registers 6
    .parameter "str"

    .prologue
    .line 1288
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1290
    .local v0, cr:I
    if-lez v0, :cond_d

    .line 1292
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1296
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/adapter/Parser;->tid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    if-eqz v1, :cond_59

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/adapter/Parser;->tid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_59
    return-void
.end method

.method public nextTag(I)I
    .registers 6
    .parameter "endingTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x3

    .line 935
    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 937
    :cond_6
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3, v3}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_28

    .line 941
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 943
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->page:I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 945
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 965
    :cond_1c
    :goto_1c
    return v0

    .line 951
    :cond_1d
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v0, :cond_6

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-ne v1, v2, :cond_6

    goto :goto_1c

    .line 963
    :cond_28
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-eqz v1, :cond_1c

    .line 977
    new-instance v0, Lcom/android/exchange/adapter/Parser$EodException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EodException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0
.end method

.method public parse()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/EasException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method resetInput(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 1279
    return-void
.end method

.method public setInput(Ljava/io/InputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1249
    if-nez p1, :cond_8

    .line 1251
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1257
    :cond_8
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 1261
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    .line 1263
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 1265
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 1267
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 1269
    sget-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 1271
    return-void
.end method

.method public setLoggingTag(Ljava/lang/String;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public skipTag()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 999
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 1003
    .local v0, thisTag:I
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3, v3}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    .line 1005
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v1, v0, :cond_3

    .line 1007
    return-void

    .line 1017
    :cond_15
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1
.end method

.method public skipTag(ZLandroid/content/Context;Ljava/io/BufferedOutputStream;J)Z
    .registers 14
    .parameter "needskipped"
    .parameter "context"
    .parameter "outstream"
    .parameter "estimateSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x3

    const/4 v5, 0x0

    .line 1069
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 1071
    .local v3, thisTag:I
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 1073
    .local v2, tagDepth:I
    const/4 v1, 0x0

    .line 1077
    .local v1, resultGetNextString:I
    if-eqz p1, :cond_e

    .line 1079
    iput-object p3, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    .line 1081
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    .line 1089
    :cond_e
    const/4 v6, 0x0

    :try_start_f
    invoke-direct {p0, v6, p4, p5}, Lcom/android/exchange/adapter/Parser;->getNextStream(ZJ)I
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_43
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_30

    move-result v1

    .line 1097
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v6, v7, :cond_21

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v6, v3, :cond_21

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    if-ne v6, v2, :cond_21

    .line 1099
    iput-boolean v5, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    .line 1105
    :cond_21
    :goto_21
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v6, v7, :cond_55

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v6, v3, :cond_55

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    if-ne v6, v2, :cond_55

    .line 1107
    if-eqz p1, :cond_53

    .line 1113
    :goto_2f
    return v4

    .line 1091
    :catch_30
    move-exception v0

    .line 1093
    .local v0, ioe:Ljava/io/IOException;
    :try_start_31
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_43

    .line 1097
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v6, v7, :cond_21

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v6, v3, :cond_21

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    if-ne v6, v2, :cond_21

    .line 1099
    iput-boolean v5, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    goto :goto_21

    .line 1097
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_43
    move-exception v4

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v6, v7, :cond_52

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v6, v3, :cond_52

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    if-ne v6, v2, :cond_52

    .line 1099
    iput-boolean v5, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    :cond_52
    throw v4

    :cond_53
    move v4, v5

    .line 1113
    goto :goto_2f

    .line 1121
    :cond_55
    if-ne v1, v4, :cond_e

    .line 1127
    new-instance v4, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v4, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v4
.end method

.method public skipTag(ZLandroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .parameter "needskipped"
    .parameter "context"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1059
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/exchange/adapter/Parser;->skipTag(ZLandroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public skipTag(ZLandroid/content/Context;Ljava/lang/String;J)Z
    .registers 14
    .parameter "needskipped"
    .parameter "context"
    .parameter "file"
    .parameter "estimateSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x3

    .line 1137
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 1139
    .local v3, thisTag:I
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 1141
    .local v2, tagDepth:I
    const/4 v1, 0x0

    .line 1145
    .local v1, resultGetNextString:I
    if-eqz p1, :cond_d

    .line 1147
    invoke-virtual {p0, p2, p3}, Lcom/android/exchange/adapter/Parser;->captureBytesOn(Landroid/content/Context;Ljava/lang/String;)V

    .line 1153
    :cond_d
    const/4 v6, 0x0

    :try_start_e
    invoke-direct {p0, v6, p4, p5}, Lcom/android/exchange/adapter/Parser;->getNextStream(ZJ)I
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_48
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_32

    move-result v1

    .line 1161
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v6, v7, :cond_23

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v6, v3, :cond_23

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    if-ne v6, v2, :cond_23

    .line 1163
    if-eqz p1, :cond_23

    .line 1165
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->captureBytesOff()V

    .line 1173
    :cond_23
    :goto_23
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v6, v7, :cond_5d

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v6, v3, :cond_5d

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    if-ne v6, v2, :cond_5d

    .line 1175
    if-eqz p1, :cond_5b

    .line 1181
    :goto_31
    return v4

    .line 1155
    :catch_32
    move-exception v0

    .line 1157
    .local v0, ioe:Ljava/io/IOException;
    :try_start_33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_48

    .line 1161
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v6, v7, :cond_23

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v6, v3, :cond_23

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    if-ne v6, v2, :cond_23

    .line 1163
    if-eqz p1, :cond_23

    .line 1165
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->captureBytesOff()V

    goto :goto_23

    .line 1161
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_48
    move-exception v4

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v5, v7, :cond_5a

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v5, v3, :cond_5a

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    if-ne v5, v2, :cond_5a

    .line 1163
    if-eqz p1, :cond_5a

    .line 1165
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->captureBytesOff()V

    :cond_5a
    throw v4

    :cond_5b
    move v4, v5

    .line 1181
    goto :goto_31

    .line 1189
    :cond_5d
    if-ne v1, v4, :cond_d

    .line 1195
    new-instance v4, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v4, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v4
.end method
